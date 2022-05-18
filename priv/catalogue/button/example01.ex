defmodule SelphiDaisy.Button.Example01 do
  @moduledoc """
  使用`label` and `class` 属性.
  @color_values ~w(neutral primary  secondary accent info success warning error ghost link )
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Button,
      height: "150px",
      title: "button with brand colors",
      direction: "vertical"



  def render(assigns) do
    ~F"""
    <div>
    <Button label="ok"  />
    <Button >neutral</Button>
    <Button color="primary">primary</Button>
    <Button color="secondary">secondary</Button>
    <Button color="accent">accent</Button>
    <Button color="ghost">ghost</Button>
    <Button color="link">link</Button>
    </div>
    """
  end
end
