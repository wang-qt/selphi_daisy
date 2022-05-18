defmodule SelphiDaisy.Swap.Example01 do
  @moduledoc """
  Swap 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Swap,
      height: "150px",
      title: " Swap text",
      direction: "vertical"

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Swap id="swap-1">
          <div class="swap-on">ON</div>
          <div class="swap-off">OFF</div>
      </Swap>
    </div>
    """
  end

end