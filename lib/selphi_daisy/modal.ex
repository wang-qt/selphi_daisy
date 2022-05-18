defmodule SelphiDaisy.Modal do
  @moduledoc """
  Modal 对话框，有状态组件， by https://daisyui.com/components/modal/#
  and https://surface-ui.org/state_management dialog
  默认隐藏，调用 Api  Modal.show("my-modal")来打开对话框，点击确定/esc关闭

  - modal	`Component`	Container element
  - modal-box	`Component`	The content of modal
  - modal-action	`Component`	Container for modal buttons
  - modal-open	`Modifier`	Add/remove this class to open/close the modal using JS
  """
  use  Surface.LiveComponent
  alias     SelphiDaisy.Button

  @doc "If modal should be shown or not, defaults to false"
  data show, :boolean, default: false

  slot default, required: true

  def render(assigns) do
    ~F"""
    <div id={@id} class={"modal", "modal-open": @show} :on-window-keydown="hide" phx-key="Escape">
      <div class="modal-box">
         <#slot />
         <div class="modal-action">
           <Button click="hide" >Ok</Button>
        </div>
      </div>
    </div>
    """
  end

  # Public API

  def show(dialog_id) do
    send_update(__MODULE__, id: dialog_id, show: true)
  end

  # Event handlers

  def handle_event("show", _, socket) do
    {:noreply, assign(socket, show: true)}
  end

  def handle_event("hide", _, socket) do
    {:noreply, assign(socket, show: false)}
  end

end