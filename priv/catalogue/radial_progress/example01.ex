defmodule SelphiDaisy.RadialProgress.Example01 do
  @moduledoc """
  RadialProgress 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.RadialProgress,
      height: "150px",
      title: " Progress",
      direction: "vertical"

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <RadialProgress value="0" ></RadialProgress>
      <RadialProgress value="10" ></RadialProgress>
      <RadialProgress value="40" ></RadialProgress>
      <RadialProgress value="70" ></RadialProgress>
      <RadialProgress value="100"></RadialProgress>
    </div>
    """
  end


end