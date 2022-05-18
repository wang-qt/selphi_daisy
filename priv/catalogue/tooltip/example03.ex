defmodule SelphiDaisy.Tooltip.Example03 do
  @moduledoc """
  Tooltip 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Tooltip,
      height: "200px",
      title: " Bottom ",
      direction: "vertical"

  alias  SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Tooltip  content="hello world!" pop_pos="bottom">
        <Button class="btn-primary">Hover me</Button>
      </Tooltip>
    </div>
    """
  end

end