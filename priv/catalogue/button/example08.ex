defmodule SelphiDaisy.Button.Example08 do
  @moduledoc """
  使用`btn-lg`,`btn-sm`,`btn-xs`,类.
  @size_values  ~w(lg md  sm  xs  )
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Button,
      height: "200px",
      title: "button size"


  # <div class="p-20 bg-cover card bg-base-200" style="background-image: url(https://picsum.photos/id/314/400/300);">
  def render(assigns) do
    ~F"""
    <Button size="lg" >Large</Button>
    <Button >Normal</Button>
    <Button size="sm">Small</Button>
    <Button size="xs">Tiny</Button>
    """
  end
end
