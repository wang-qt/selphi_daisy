defmodule SelphiDaisy.Example03 do
  @moduledoc """
  Divider 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Divider,
      height: "400px",
      title: "Divider horizontal",
      direction: "vertical"

  def render(assigns) do
    ~F"""
    <div class="flex flex-col w-full sm:flex-row">
      <div class="grid flex-grow h-32 card bg-base-300 rounded-box place-items-center">content</div>
      <Divider class="sm:divider-horizontal">OR</Divider>
      <div class="grid flex-grow h-32 card bg-base-300 rounded-box place-items-center">content</div>
    </div>
    """
  end


end