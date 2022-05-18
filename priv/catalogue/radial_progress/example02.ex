defmodule SelphiDaisy.RadialProgress.Example02 do
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
      <RadialProgress value="0"  class="text-primary" ></RadialProgress>
      <RadialProgress value="10" class="text-secondary" ></RadialProgress>
      <RadialProgress value="40" class="text-accent" ></RadialProgress>
      <RadialProgress value="70" class="text-neutral" ></RadialProgress>
      <RadialProgress value="75" class="text-info" ></RadialProgress>
      <RadialProgress value="80" class="text-success" ></RadialProgress>
      <RadialProgress value="85" class="text-warning" ></RadialProgress>
      <RadialProgress value="100" class="text-error" ></RadialProgress>
    </div>
    """
  end


end