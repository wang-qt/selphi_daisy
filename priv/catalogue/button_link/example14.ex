defmodule SelphiDaisy.ButtonLink.Example14 do
  @moduledoc """
   使用 `btn-block`.
  使用方法 <Button  width="wide" />
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "100px",
      title: "button block"



  # <div class="p-20 bg-cover card bg-base-200" style="background-image: url(https://picsum.photos/id/314/400/300);">
  def render(assigns) do
    ~F"""
    <ButtonLink width="block"  >block</ButtonLink>
    """
  end
end
