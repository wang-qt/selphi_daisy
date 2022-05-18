defmodule SelphiDaisy.Carousel.Example08 do
  @moduledoc """
  带有底部nav 按钮的轮播，使用 BottomNavItem , img 添加 class="w-full"
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Carousel,
      height: "300px",
      title: "Carousel with indicator buttons",
      direction: "vertical"

  alias   SelphiDaisy.Carousel.{BottomNavItem, SideNavItem}

  def render(assigns) do
    ~F"""
    <div class="flex min-h-[6rem] min-w-[24rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
    <Carousel  type="bottom-nav">
      <BottomNavItem id="bitem1" >
        <img src="https://api.lorem.space/image/car?w=800&h=200&hash=8B7BCDC2" class="w-full">
      </BottomNavItem>
      <BottomNavItem id="bitem2" >
        <img src="https://api.lorem.space/image/car?w=800&h=200&hash=500B67FB" class="w-full">
      </BottomNavItem>
      <BottomNavItem id="bitem3" >
        <img src="https://api.lorem.space/image/car?w=800&h=200&hash=A89D0DE6" class="w-full">
      </BottomNavItem>
      <BottomNavItem  id="bitem4" >
        <img src="https://api.lorem.space/image/car?w=800&h=200&hash=225E6693" class="w-full">
      </BottomNavItem>
    </Carousel>
    </div>
    """
  end


end