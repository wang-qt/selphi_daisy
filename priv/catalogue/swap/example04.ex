defmodule SelphiDaisy.Swap.Example04 do
  @moduledoc """
  Swap 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Swap,
      height: "150px",
      title: "  Swap icons with rotate effect",
      direction: "vertical"

  alias SelphiDaisy.Heroicons

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Swap id="swap-1" animate="rotate" class="btn btn-circle  btn-secondary">
        <Heroicons name="menu"  size="10" class="swap-on"/>
        <Heroicons name="x"  size="10" class="swap-off" />
      </Swap>
    </div>
    """
  end

end