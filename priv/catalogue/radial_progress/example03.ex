defmodule SelphiDaisy.RadialProgress.Example03 do
  @moduledoc """
  RadialProgress 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.RadialProgress,
      height: "150px",
      title: " Custom color",
      direction: "vertical"

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <RadialProgress value="80" class="bg-primary text-primary-content border-4 border-primary" ></RadialProgress>
    </div>
    """
  end


end