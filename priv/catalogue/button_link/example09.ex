defmodule SelphiDaisy.ButtonLink.Example09 do
  @moduledoc """
   使用`btn-wide`.
  @size_values  ~w(lg md  sm  xs  )
  @width_values  ~w( wide block)
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "450px",
      title: "button wide"



  # <div class="p-20 bg-cover card bg-base-200" style="background-image: url(https://picsum.photos/id/314/400/300);">
  def render(assigns) do
    ~F"""
    <ButtonLink size="lg" >large</ButtonLink>
    <ButtonLink size="lg"  width="wide" >large</ButtonLink>
    <ButtonLink width="wide" class="mt-4">normal</ButtonLink>
    <ButtonLink width="wide" size="sm" class="mt-4">small</ButtonLink>
    <ButtonLink width="wide" size="xs" class="mt-4">tiny</ButtonLink>

    <ButtonLink width="block" size="sm" class="mt-4">small</ButtonLink>
    <ButtonLink width="block" size="xs" class="mt-4">tiny</ButtonLink>
    """
  end
end
