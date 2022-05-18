defmodule SelphiDaisy.ModalJs.Example02 do
  @moduledoc """
  ModalJs 有状态模式对话框.
  通过 `Phoenix.LiveView.JS`模块.
  1. 向服务器 liveview 发送 modal-open
  2. JS.add_class和JS.remove_class函数，增加/删除 `modal-open` 来显示/隐藏modal
  3. 向 js 发送 dom 事件，js添加事件 window.addEventListener("click", e => console.log("clicked!", e.detail))
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ModalJs,
      height: "600px",
      title: "modal js",
      direction: "vertical"

  alias     SelphiDaisy.Button
  alias   Phoenix.LiveView.JS

  def render(assigns) do
    ~F"""
    <div class=" h-48 flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <button  class="btn btn-primary"
           phx-click={JS.add_class("modal-open", to: "#my-modal", transition: "fade-in")}>
         show modal
       </button>
      <button  class="btn btn-secondary"
           phx-click={show_modal("#my-modal")}>
         show modal js
       </button>

    </div>
    {!-- 一般放在 </body> 之前 --}
    <ModalJs id="my-modal">
      <h3 class="font-bold text-lg">Congratulations random Interner user!</h3>
      <p class="py-4">You've been selected for a chance to get one year of subscription to use Wikipedia for free!</p>
    </ModalJs>
    """
  end

  def show_modal(js \\ %JS{}, selector) do
    js
    |> JS.push("modal-open",  page_loading: true, value: %{id: "my-modal"} )
    |> JS.add_class("modal-open", to: selector, transition: "fade-in")
    |> JS.dispatch("modal-open", to: selector, detail: %{x: 100, y: 200})
  end


  # Event handlers
  def handle_event("modal-open", value, socket) do

    IO.puts "modal is open!!"
    IO.inspect value

    {:noreply, socket}
  end


end