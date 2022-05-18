defmodule SelphiDaisy.Progress.Example01 do
  @moduledoc """
  Progress 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Progress,
      height: "150px",
      title: " Progress",
      direction: "vertical"

  def render(assigns) do

    ~F"""
    <div class="flex flex-col gap-2 items-center">
      <Progress value="0" ></Progress>
      <Progress value="10" ></Progress>
      <Progress value="40" ></Progress>
      <Progress value="70" ></Progress>
      <Progress value="100"></Progress>
    </div>
    """
  end

end