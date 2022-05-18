defmodule SelphiDaisy.Stack.Example03  do
  @moduledoc """
  Stack 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Stack,
      height: "200px",
      title: " stacked images",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex items-center justify-center gap-4">
    <Stack>
      <img src="https://api.lorem.space/image/face?w=100&h=100&hash=8B7BCDC2" alt="Image 1" class="rounded">
      <img src="https://api.lorem.space/image/face?w=100&h=100&hash=500B67FB" alt="Image 2" class="rounded">
      <img src="https://api.lorem.space/image/face?w=100&h=100&hash=A89D0DE6" alt="Image 3" class="rounded">
    </Stack>
    </div>
    """
  end

end