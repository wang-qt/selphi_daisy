defmodule SelphiDaisy.Progress.Example06 do
  @moduledoc """
  Progress 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Progress,
      height: "150px",
      title: " Info color",
      direction: "vertical"
  def render(assigns) do

    ~F"""
    <div class="flex flex-col gap-2 items-center">
      <Progress value="0" color="info" class="w-56"></Progress>
      <Progress value="10" color="info" class="w-56"></Progress>
      <Progress value="40" color="info" class="w-56"></Progress>
      <Progress value="70" color="info" class="w-56"></Progress>
      <Progress value="100" color="info" class="w-56"></Progress>
    </div>
    """
  end

end