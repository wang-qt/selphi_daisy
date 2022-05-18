defmodule SelphiDaisy.Stack.Example04  do
  @moduledoc """
  Stack 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Stack,
      height: "200px",
      title: " stacked cards",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex items-center justify-center gap-4">
    <Stack>
      <div class="text-center border border-base-content card w-36 bg-base-100">
        <div class="card-body">A</div>
      </div>
      <div class="text-center border border-base-content card w-36 bg-base-100">
        <div class="card-body">B</div>
      </div>
      <div class="text-center border border-base-content card w-36 bg-base-100">
        <div class="card-body">C</div>
      </div>
    </Stack>
    </div>
    """
  end

end