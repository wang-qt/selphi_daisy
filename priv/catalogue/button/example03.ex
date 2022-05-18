defmodule SelphiDaisy.Button.Example03 do
  @moduledoc """
  使用`btn-outline`. 使用方法 <Button  outline />
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Button,
      height: "150px",
      title: "outline button"



  def render(assigns) do
    ~F"""
    <div>
    <Button outline >neutral</Button>
    <Button outline color="primary">primary</Button>
    <Button outline color="secondary">secondary</Button>
    <Button outline color="accent">accent</Button>
    </div>
    """
  end
end
