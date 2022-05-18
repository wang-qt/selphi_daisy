defmodule  SelphiDaisy.Carousel.Example07 do
  @moduledoc """
  Full-bleed carousel，Carousel添加高度eg. max-w-md p-4 space-x-4 bg-neutral，snap_align="center"，
  img 添加 class="rounded-box".
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Carousel,
      height: "300px",
      title: "Full-bleed carousel",
      direction: "vertical"

  alias   SelphiDaisy.Carousel.{Item}

  def render(assigns) do
    ~F"""
    <div class="flex min-h-[6rem] min-w-[24rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
    <Carousel  snap_align="center" class="max-w-md p-4 space-x-4 bg-secondary">
      <Item >
        <img src="https://api.lorem.space/image/furniture?w=250&h=180&hash=8B7BCDC2" class="rounded-box">
      </Item>
      <Item  >
        <img src="https://api.lorem.space/image/furniture?w=250&h=180&hash=500B67FB" class="rounded-box">
      </Item>
      <Item >
        <img src="https://api.lorem.space/image/furniture?w=250&h=180&hash=A89D0DE6" class="rounded-box">
      </Item>
      <Item>
        <img src="https://api.lorem.space/image/furniture?w=250&h=180&hash=225E6693" class="rounded-box">
      </Item>
      <Item >
        <img src="https://api.lorem.space/image/furniture?w=250&h=180&hash=9D9539E7" class="rounded-box">
      </Item>
      <Item >
        <img src="https://api.lorem.space/image/furniture?w=250&h=180&hash=BDC01094" class="rounded-box">
      </Item>
      <Item >
        <img src="https://api.lorem.space/image/furniture?w=250&h=180&hash=7F5AE56A" class="rounded-box">
      </Item>
    </Carousel>
    </div>
    """
  end


end