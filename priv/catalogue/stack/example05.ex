defmodule SelphiDaisy.Stack.Example05  do
  @moduledoc """
  Stack 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Stack,
      height: "200px",
      title: " stacked cards with shadow ",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex items-center justify-center gap-4">
    <Stack>
      <div class="text-center shadow-md w-36 card bg-base-200">
        <div class="card-body">A</div>
      </div>
      <div class="text-center shadow w-36 card bg-base-200">
        <div class="card-body">B</div>
      </div>
      <div class="text-center shadow-sm w-36 card bg-base-200">
        <div class="card-body">C</div>
      </div>
    </Stack>
    </div>
    """
  end

end