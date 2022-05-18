defmodule SelphiDaisy.Progress.Example02 do
  @moduledoc """
  Progress 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Progress,
      height: "150px",
      title: " Primary color",
      direction: "vertical"
  def render(assigns) do

    ~F"""
    <div class="flex flex-col gap-2 items-center">
      <Progress value="0" color="primary" class="w-56"></Progress>
      <Progress value="10" color="primary" class="w-56"></Progress>
      <Progress value="40" color="primary" class="w-56"></Progress>
      <Progress value="70" color="primary" class="w-56"></Progress>
      <Progress value="100" color="primary" class="w-56"></Progress>
    </div>
    """
  end

end