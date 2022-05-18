defmodule SelphiDaisy.Button.Example05 do
  @moduledoc """
  使用`btn-info`, `btn-success`, `btn-warning`, `btn-error`.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Button,
      height: "150px",
      title: "button with state colors",
      direction: "vertical"




  def render(assigns) do
    ~F"""
    <div>
    <Button color="info">info</Button>
    <Button color="success">success</Button>
    <Button color="warning">warning</Button>
    <Button color="error">error</Button>
    <Button outline color="info">info</Button>
    <Button outline color="success">success</Button>
    <Button outline color="warning">warning</Button>
    <Button outline color="error">error</Button>
    </div>
    """
  end
end
