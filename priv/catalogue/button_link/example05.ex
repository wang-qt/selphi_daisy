defmodule SelphiDaisy.ButtonLink.Example05 do
  @moduledoc """
  使用`btn-info`, `btn-success`, `btn-warning`, `btn-error`.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "150px",
      title: "button with state colors",
      direction: "vertical"




  def render(assigns) do
    ~F"""
    <div>
    <ButtonLink color="info">info</ButtonLink>
    <ButtonLink color="success">success</ButtonLink>
    <ButtonLink color="warning">warning</ButtonLink>
    <ButtonLink color="error">error</ButtonLink>
    <ButtonLink outline color="info">info</ButtonLink>
    <ButtonLink outline color="success">success</ButtonLink>
    <ButtonLink outline color="warning">warning</ButtonLink>
    <ButtonLink outline color="error">error</ButtonLink>
    </div>
    """
  end
end
