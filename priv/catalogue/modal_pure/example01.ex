defmodule SelphiDaisy.ModalPure.Example01 do
  @moduledoc """
  ModalPure 无状态模式对话框.
  通过 `Phoenix.LiveView.JS`模块的JS.add_class和JS.remove_class函数，增加/删除 `modal-open` 来显示/隐藏modal
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ModalPure,
      height: "600px",
      title: "modal pure",
      direction: "vertical"

  alias     SelphiDaisy.Button
  alias   Phoenix.LiveView.JS

  def render(assigns) do
    ~F"""
    <div class=" h-48 flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <button  class="btn btn-primary"
           phx-click={JS.add_class("modal-open", to: "#my-modal", transition: "ease-in-out")}>
         show modal
       </button>
    </div>
    {!-- 一般放在 </body> 之前 --}
    <ModalPure id="my-modal">
      <h3 class="font-bold text-lg">Congratulations random Interner user!</h3>
      <p class="py-4">You've been selected for a chance to get one year of subscription to use Wikipedia for free!</p>
    </ModalPure>
    """
  end


end