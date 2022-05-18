defmodule SelphiDaisy.Progress.Example03 do
  @moduledoc """
  Progress 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Progress,
      height: "150px",
      title: " Secondary color",
      direction: "vertical"
  def render(assigns) do

    ~F"""
    <div class="flex flex-col gap-2 items-center">
      <Progress value="0" color="secondary" class="w-56"></Progress>
      <Progress value="10" color="secondary" class="w-56"></Progress>
      <Progress value="40" color="secondary" class="w-56"></Progress>
      <Progress value="70" color="secondary" class="w-56"></Progress>
      <Progress value="100" color="secondary" class="w-56"></Progress>
    </div>
    """
  end

end