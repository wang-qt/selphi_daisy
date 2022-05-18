defmodule SelphiDaisy.Stack.Example06  do
  @moduledoc """
  Stack 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Stack,
      height: "200px",
      title: " stacked cards  ",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex items-center justify-center gap-4">
    <Stack>
      <div class="shadow-md card bg-primary text-primary-content">
        <div class="card-body">
          <h2 class="card-title">Notification 1</h2>
          <p>You have 3 unread messages. Tap here to see.</p>
        </div>
      </div>
      <div class="shadow card bg-primary text-primary-content">
        <div class="card-body">
          <h2 class="card-title">Notification 2</h2>
          <p>You have 3 unread messages. Tap here to see.</p>
        </div>
      </div>
      <div class="shadow-sm card bg-primary text-primary-content">
        <div class="card-body">
          <h2 class="card-title">Notification 3</h2>
           <p>You have 3 unread messages. Tap here to see.</p>
        </div>
      </div>
    </Stack>
    </div>
    """
  end

end