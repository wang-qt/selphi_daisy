defmodule SelphiDaisy.ButtonLink.Example07 do
  @moduledoc """
  glass效果按钮. 使用方法 <Button  glass />
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "250px",
      title: "glass"



  # <div class="p-20 bg-cover card bg-base-200" style="background-image: url(https://picsum.photos/id/314/400/300);">
  def render(assigns) do
    ~F"""
    <div class="p-20 bg-cover card bg-base-200" style="background-image: url(/images/6.jpg);">
    <ButtonLink glass >Glass button</ButtonLink>
    </div>
    """
  end
end
