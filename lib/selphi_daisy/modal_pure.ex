defmodule SelphiDaisy.ModalPure do
  @moduledoc """
  Modal 对话框，无状态组件， by https://daisyui.com/components/modal/#
  and https://surface-ui.org/state_management dialog

  通过 `Phoenix.LiveView.JS`模块的JS.add_class和JS.remove_class函数，增加/删除 `modal-open` 来显示/隐藏modal

  - modal	`Component`	Container element
  - modal-box	`Component`	The content of modal
  - modal-action	`Component`	Container for modal buttons
  - modal-open	`Modifier`	Add/remove this class to open/close the modal using JS
  """
  use  Surface.Component
  alias     SelphiDaisy.Button
  alias   Phoenix.LiveView.JS

  prop id, :string , required: true

  @doc "If modal should be shown or not, defaults to false"
  data show, :boolean, default: false

  slot default, required: true

  def render(assigns) do
    ~F"""
    <div id={@id} class="modal"
          phx-window-keydown={JS.remove_class("modal-open", to: "##{@id}")}
          phx-key="Escape">
      <div class="modal-box">
         <#slot />
         <div class="modal-action">
           {!-- <Button click="hide" >Ok</Button> --}
           <button  class="btn btn-secondary"
              phx-click={JS.remove_class("modal-open", to: "##{@id}")}>
             Ok
           </button>
        </div>
      </div>
    </div>
    """
  end

end