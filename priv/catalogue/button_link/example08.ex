defmodule SelphiDaisy.ButtonLink.Example08 do
  @moduledoc """
  使用`btn-lg`,`btn-sm`,`btn-xs`,类.
  @size_values  ~w(lg md  sm  xs  )
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "200px",
      title: "button size"



  # <div class="p-20 bg-cover card bg-base-200" style="background-image: url(https://picsum.photos/id/314/400/300);">
  def render(assigns) do
    ~F"""
    <ButtonLink size="lg" >Large</ButtonLink>
    <ButtonLink >Normal</ButtonLink>
    <ButtonLink size="sm">Small</ButtonLink>
    <ButtonLink size="xs">Tiny</ButtonLink>
    """
  end
end
