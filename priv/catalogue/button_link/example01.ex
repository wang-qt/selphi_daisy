defmodule SelphiDaisy.ButtonLink.Example01 do
  @moduledoc """
  使用`label` and `class` 属性.
  @color_values ~w(neutral primary  secondary accent info success warning error ghost link )
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "150px",
      title: "button with brand colors",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div>
    <ButtonLink label="ok"  />
    <ButtonLink >neutral</ButtonLink>
    <ButtonLink color="primary">primary</ButtonLink>
    <ButtonLink color="secondary">secondary</ButtonLink>
    <ButtonLink color="accent">accent</ButtonLink>
    <ButtonLink color="ghost">ghost</ButtonLink>
    <ButtonLink color="link">link</ButtonLink>
    </div>
    """
  end
end
