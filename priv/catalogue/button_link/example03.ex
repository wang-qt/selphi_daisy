defmodule SelphiDaisy.ButtonLink.Example03 do
  @moduledoc """
  使用`btn-outline`. 使用方法 <Button  outline />
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "150px",
      title: "outline button"



  def render(assigns) do
    ~F"""
    <div>
    <ButtonLink outline >neutral</ButtonLink>
    <ButtonLink outline color="primary">primary</ButtonLink>
    <ButtonLink outline color="secondary">secondary</ButtonLink>
    <ButtonLink outline color="accent">accent</ButtonLink>
    </div>
    """
  end
end
