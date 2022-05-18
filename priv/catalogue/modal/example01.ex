defmodule SelphiDaisy.Modal.Example01 do
  @moduledoc """
  Modal 模式对话框. 只能充满测试窗口.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Modal,
      height: "600px",
      title: "modal",
      direction: "vertical"

  alias     SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class=" h-48 flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <!-- The button to open modal -->
      <Button click="show_modal" class="btn-primary">Click to open the new dialog</Button>
    </div>
    {!-- 一般放在 </body> 之前 --}
    <Modal id="my-modal">
      <h3 class="font-bold text-lg">Congratulations random Interner user!</h3>
      <p class="py-4">You've been selected for a chance to get one year of subscription to use Wikipedia for free!</p>
    </Modal>
    """
  end

  def handle_event("show_modal", _, socket) do
    Modal.show("my-modal")
    {:noreply, socket}
  end
end