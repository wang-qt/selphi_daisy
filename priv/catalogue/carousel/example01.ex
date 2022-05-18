defmodule SelphiDaisy.Carousel.Example01 do
  @moduledoc """
  默认`carousel`样式.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Carousel,
      height: "350px",
      title: "Snap to start (default)",
      direction: "vertical"

  alias   SelphiDaisy.Carousel.{Item}

  def render(assigns) do
    ~F"""
    <div class="flex min-h-[6rem] min-w-[24rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
    <Carousel>
        <Item >
          <img src="https://api.lorem.space/image/burger?w=400&h=300&hash=500B67FB" alt="Burger">
        </Item>
        <Item >
          <img src="https://api.lorem.space/image/burger?w=400&h=300&hash=A89D0DE6" alt="Burger">
        </Item>
        <Item >
          <img src="https://api.lorem.space/image/burger?w=400&h=300&hash=225E6693" alt="Burger">
        </Item>
        <Item >
          <img src="https://api.lorem.space/image/burger?w=400&h=300&hash=9D9539E7" alt="Burger">
        </Item>
        <Item >
         <img src="https://api.lorem.space/image/burger?w=400&h=300&hash=BDC01094" alt="Burger">
        </Item>
        <Item >
           <img src="https://api.lorem.space/image/burger?w=400&h=300&hash=7F5AE56A" alt="Burger">
        </Item>
    </Carousel>
    </div>
    """
  end


end