defmodule SelphiDaisy.Button.Example09 do
  @moduledoc """
   使用`btn-wide`.
  @size_values  ~w(lg md  sm  xs  )
  @width_values  ~w( wide block)
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Button,
      height: "450px",
      title: "button wide"


  # <div class="p-20 bg-cover card bg-base-200" style="background-image: url(https://picsum.photos/id/314/400/300);">
  def render(assigns) do
    ~F"""
    <Button size="lg" >large</Button>
    <Button size="lg"  width="wide" >large</Button>
    <Button width="wide" class="mt-4">normal</Button>
    <Button width="wide" size="sm" class="mt-4">small</Button>
    <Button width="wide" size="xs" class="mt-4">tiny</Button>

    <Button width="block" size="sm" class="mt-4">small</Button>
    <Button width="block" size="xs" class="mt-4">tiny</Button>
    """
  end
end
