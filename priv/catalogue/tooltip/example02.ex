defmodule SelphiDaisy.Tooltip.Example02 do
  @moduledoc """
  Tooltip 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Tooltip,
      height: "150px",
      title: " Force open ",
      direction: "vertical"

  alias  SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-end justify-center gap-2 overflow-x-hidden">
      <Tooltip  content="hello world!" type="force-open">
        <Button class="btn-primary">Hover me</Button>
      </Tooltip>
    </div>
    """
  end

end