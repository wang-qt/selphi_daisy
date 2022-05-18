defmodule SelphiDaisy.ImageMask.Example02  do
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
      <ImageMask size="40" mask="pentagon" src="https://api.lorem.space/image/shoes?w=160&h=160" />
      <ImageMask size="40" mask="diamond" src="https://api.lorem.space/image/shoes?w=160&h=160" />
      <ImageMask size="40" mask="square" src="https://api.lorem.space/image/shoes?w=160&h=160" />
      <ImageMask size="40" mask="circle" src="https://api.lorem.space/image/shoes?w=160&h=160" />
      <ImageMask size="40" mask="parallelogram" src="https://api.lorem.space/image/shoes?w=160&h=160" />
    </div>
    """
  end

end