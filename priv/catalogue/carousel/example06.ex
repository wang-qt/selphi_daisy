defmodule SelphiDaisy.Carousel.Example06 do
  @moduledoc """
  一次显示两个轮播项，等比缩放，Carousel添加高度eg. w-96，  Item 添加 w-1/2类 img 添加 w-full.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Carousel,
      height: "500px",
      title: "Carousel with half width items",
      direction: "vertical"

  alias   SelphiDaisy.Carousel.{Item}

  def render(assigns) do
    ~F"""
    <div class="flex min-h-[6rem] min-w-[24rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
    <Carousel  class="w-96">
      <Item class="w-1/2">
        <img src="https://api.lorem.space/image/game?w=256&h=400&hash=8B7BCDC2" class="w-full" alt="Tailwind CSS Carousel component">
      </Item>
      <Item class="w-1/2">
        <img src="https://api.lorem.space/image/game?w=256&h=400&hash=500B67FB" class="w-full"  alt="Tailwind CSS Carousel component">
      </Item>
      <Item class="w-1/2">
        <img src="https://api.lorem.space/image/game?w=256&h=400&hash=A89D0DE6" class="w-full"  alt="Tailwind CSS Carousel component">
      </Item>
      <Item class="w-1/2">
        <img src="https://api.lorem.space/image/game?w=256&h=400&hash=225E6693" class="w-full"  alt="Tailwind CSS Carousel component">
      </Item>
      <Item class="w-1/2">
        <img src="https://api.lorem.space/image/game?w=256&h=400&hash=9D9539E7"  class="w-full" alt="Tailwind CSS Carousel component">
      </Item>
      <Item class="w-1/2">
        <img src="https://api.lorem.space/image/game?w=256&h=400&hash=BDC01094"  class="w-full" alt="Tailwind CSS Carousel component">
      </Item>
      <Item class="w-1/2">
        <img src="https://api.lorem.space/image/game?w=256&h=400&hash=7F5AE56A" class="w-full" alt="Tailwind CSS Carousel component">
      </Item>
    </Carousel>
    </div>
    """
  end


end