defmodule SelphiDaisy.Swap.Example05 do
  @moduledoc """
  Swap 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Swap,
      height: "250px",
      title: " Swap icons with flip effect",
      direction: "vertical"

  alias SelphiDaisy.Heroicons

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Swap id="swap-1" animate="flip" class="text-9xl">
        <div class="swap-on">😈</div>
        <div class="swap-off">😇</div>
      </Swap>
    </div>
    """
  end

end