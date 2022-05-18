defmodule SelphiDaisy.ButtonLink.Example16 do
  @moduledoc """
   使用 `no-animation`.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "100px",
      title: "disable animation"



  # <div class="p-20 bg-cover card bg-base-200" style="background-image: url(https://picsum.photos/id/314/400/300);">
  def render(assigns) do
    ~F"""
    <ButtonLink no_animation color="primary">I don't have click animation</ButtonLink>
    """
  end
end
