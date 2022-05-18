defmodule SelphiDaisy.ModalJs do
  @moduledoc """
  Modal 对话框，有状态组件， by https://daisyui.com/components/modal/#
  and https://surface-ui.org/state_management dialog

   通过 `Phoenix.LiveView.JS`模块的JS.add_class和JS.remove_class函数，增加/删除 `modal-open` 来显示/隐藏modal,
   同时也发送消息到服务器

  - modal	`Component`	Container element
  - modal-box	`Component`	The content of modal
  - modal-action	`Component`	Container for modal buttons
  - modal-open	`Modifier`	Add/remove this class to open/close the modal using JS
  """
  use  Surface.LiveComponent
  alias   Phoenix.LiveView.JS

  slot default, required: true

  # 消息发送给 liveview
#  def render(assigns) do
#    ~F"""
#    <div id={@id} class="modal"
#               phx-window-keydown={hide_modal("##{@id}")}  phx-key="Escape">
#      <div class="modal-box">
#         <#slot />
#         <div class="modal-action">
#           <button  class="btn btn-secondary"
#              phx-click={hide_modal("##{@id}")}>
#             Ok
#           </button>
#        </div>
#      </div>
#    </div>
#    """
#  end

  # 消息发送给自己
  def render(assigns) do
    ~F"""
    <div id={@id} class="modal"
               :on-window-keydown={hide_modal("##{@id}")}  phx-key="Escape">
      <div class="modal-box">
         <#slot />
         <div class="modal-action">
           <button  class="btn btn-secondary"
              :on-click={hide_modal("##{@id}")}>
             Ok
           </button>
        </div>
      </div>
    </div>
    """
  end

  def hide_modal(js \\ %JS{}, selector) do
    js
    |> JS.push("modal-closed")
    |> JS.remove_class("modal-open", to: selector, transition: "fade-out")
  end


  # Event handlers
  def handle_event("modal-closed", _, socket) do

    IO.puts "modal is closed!!"

    {:noreply, socket}
  end

end