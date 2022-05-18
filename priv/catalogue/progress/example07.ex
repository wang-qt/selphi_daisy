defmodule SelphiDaisy.Progress.Example07 do
  @moduledoc """
  Progress 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Progress,
      height: "150px",
      title: " Warning color",
      direction: "vertical"
  def render(assigns) do

    ~F"""
    <div class="flex flex-col gap-2 items-center">
      <Progress value="0" color="warning" class="w-56"></Progress>
      <Progress value="10" color="warning" class="w-56"></Progress>
      <Progress value="40" color="warning" class="w-56"></Progress>
      <Progress value="70" color="warning" class="w-56"></Progress>
      <Progress value="100" color="warning" class="w-56"></Progress>
    </div>
    """
  end

end