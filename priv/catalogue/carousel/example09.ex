defmodule SelphiDaisy.Carousel.Example09 do
  @moduledoc """
  侧边nav 按钮的轮播，type="side-nav" ,使用 SideNavItem , img 添加 class="w-full"
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
    <Carousel  type="side-nav">
      <SideNavItem id="sitem1" prev_id="sitem4" next_id="sitem2">
        <img src="https://api.lorem.space/image/car?w=800&h=200&hash=8B7BCDC2" class="w-full">
      </SideNavItem>
      <SideNavItem id="sitem2"  prev_id="sitem1" next_id="sitem3" >
        <img src="https://api.lorem.space/image/car?w=800&h=200&hash=500B67FB" class="w-full">
      </SideNavItem>
      <SideNavItem id="sitem3" prev_id="sitem2" next_id="sitem4">
        <img src="https://api.lorem.space/image/car?w=800&h=200&hash=A89D0DE6" class="w-full">
      </SideNavItem>
      <SideNavItem  id="sitem4" prev_id="sitem3" next_id="sitem1">
        <img src="https://api.lorem.space/image/car?w=800&h=200&hash=225E6693" class="w-full">
      </SideNavItem>
    </Carousel>
    </div>
    """
  end


end