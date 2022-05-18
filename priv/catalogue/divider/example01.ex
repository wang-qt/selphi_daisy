defmodule SelphiDaisy.Divider.Example01 do
  @moduledoc """
  Divider 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Divider,
      height: "600px",
      title: "Divider default",
      direction: "vertical"

  def render(assigns) do
    ~F"""
    <div class="flex flex-col w-full border-opacity-50">
      <div class="grid h-20 card bg-base-300 rounded-box place-items-center">content</div>
      <Divider>OR</Divider>
      <div class="grid h-20 card bg-base-300 rounded-box place-items-center">content</div>
    </div>
    <div class="mt-4 flex flex-col w-full border-opacity-50">
      <div class="grid h-20 card bg-base-300 rounded-box place-items-center">content</div>
      <Divider></Divider>
      <div class="grid h-20 card bg-base-300 rounded-box place-items-center">content</div>
    </div>
    """
  end


end