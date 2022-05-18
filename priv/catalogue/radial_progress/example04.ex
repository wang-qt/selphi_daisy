defmodule SelphiDaisy.RadialProgress.Example04 do
  @moduledoc """
  RadialProgress 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.RadialProgress,
      height: "400px",
      title: " Custom color",
      direction: "vertical"

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <RadialProgress value="80" size="12rem" thickness="2px"></RadialProgress>
      <RadialProgress value="80" size="12rem" thickness="2rem"></RadialProgress>
    </div>
    """
  end


end