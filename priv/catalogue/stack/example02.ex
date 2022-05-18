defmodule SelphiDaisy.Stack.Example02  do
  @moduledoc """
  Stack 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Stack,
      height: "200px",
      title: " divs with stack",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex items-center justify-center gap-4">
    <Stack>
      <div class="grid w-32 h-20 rounded bg-primary text-primary-content place-content-center">1</div>
      <div class="grid w-32 h-20 rounded bg-accent text-accent-content place-content-center">2</div>
      <div class="grid w-32 h-20 rounded bg-secondary text-secondary-content place-content-center">3</div>
    </Stack>
    </div>
    """
  end

end