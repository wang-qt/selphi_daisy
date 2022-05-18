defmodule SelphiDaisy.ImageMask.Example04  do
  @moduledoc """
  ImageMask 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ImageMask,
      height: "200px",
      title: " imag mask",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="flex items-center justify-center gap-4">
      <ImageMask size="32" mask="triangle" src="https://api.lorem.space/image/shoes?w=160&h=160" />
      <ImageMask size="32" mask="triangle-2" src="https://api.lorem.space/image/shoes?w=160&h=160" />
      <ImageMask size="32" mask="triangle-3" src="https://api.lorem.space/image/shoes?w=160&h=160" />
      <ImageMask size="32" mask="triangle-4" src="https://api.lorem.space/image/shoes?w=160&h=160" />
      <ImageMask size="32" mask="half-1" src="https://api.lorem.space/image/shoes?w=160&h=160" />
      <ImageMask size="32" mask="half-2" src="https://api.lorem.space/image/shoes?w=160&h=160" />
    </div>
    """
  end

end