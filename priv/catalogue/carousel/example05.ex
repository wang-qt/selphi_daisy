defmodule SelphiDaisy.Carousel.Example05 do
  @moduledoc """
  垂直滚动，等比缩放，Carousel添加高度eg. h-96，  Item 添加 h-full类.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Carousel,
      height: "500px",
      title: "Vertical carousel",
      direction: "vertical"

  alias   SelphiDaisy.Carousel.{Item}

  def render(assigns) do
    ~F"""
    <div class="flex min-h-[6rem] min-w-[24rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
    <Carousel dir="vertical" class="h-96">
      <Item class="h-full">
        <img src="https://api.lorem.space/image/game?w=256&h=400&hash=8B7BCDC2" alt="Tailwind CSS Carousel component">
      </Item>
      <Item class="h-full">
        <img src="https://api.lorem.space/image/game?w=256&h=400&hash=500B67FB"  alt="Tailwind CSS Carousel component">
      </Item>
      <Item class="h-full">
        <img src="https://api.lorem.space/image/game?w=256&h=400&hash=A89D0DE6"  alt="Tailwind CSS Carousel component">
      </Item>
      <Item class="h-full">
        <img src="https://api.lorem.space/image/game?w=256&h=400&hash=225E6693"  alt="Tailwind CSS Carousel component">
      </Item>
      <Item class="h-full">
        <img src="https://api.lorem.space/image/game?w=256&h=400&hash=9D9539E7"  alt="Tailwind CSS Carousel component">
      </Item>
      <Item class="h-full">
        <img src="https://api.lorem.space/image/game?w=256&h=400&hash=BDC01094"  alt="Tailwind CSS Carousel component">
      </Item>
      <Item class="h-full">
        <img src="https://api.lorem.space/image/game?w=256&h=400&hash=7F5AE56A" alt="Tailwind CSS Carousel component">
      </Item>
    </Carousel>
    </div>
    """
  end


end