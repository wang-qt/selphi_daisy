defmodule SelphiDaisy.Divider.Example02 do
  @moduledoc """
  Divider 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Divider,
      height: "300px",
      title: "Divider horizontal",
      direction: "vertical"

  def render(assigns) do
    ~F"""
    <div class="flex  w-full ">
      <div class="grid h-20 flex-grow card bg-base-300 rounded-box place-items-center">content</div>
      <Divider class="divider-horizontal">OR</Divider>
      <div class="grid h-20 flex-grow card bg-base-300 rounded-box place-items-center">content</div>
    </div>
    """
  end


end