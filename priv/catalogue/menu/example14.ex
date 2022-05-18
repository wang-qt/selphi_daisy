defmodule SelphiDaisy.Menu.Example14 do
  @moduledoc """
   Menu 图标菜单, 响应式 mobile只有图标，桌面图标加文字.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "300px",
      title: "With icons responsive",
      direction: "vertical"

  alias SelphiDaisy.Heroicons
  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 bg-base-200 min-h-screen">
      <Menu  class="shadow-xl  w-auto md:w-56   rounded-box">
        <Item ><Link to="#" >
                   <Heroicons name="home"   />
                   <span class="hidden md:block" >Home</span>
        </Link></Item>
        <Item ><Link to="#" >
                   <Heroicons name="information-circle"  />
                   <span class="hidden md:block" >item 2</span>
        </Link></Item>
        <Item ><Link to="#" >
                   <Heroicons name="chart-bar"  />
                    <span class="hidden md:block" > item 3</span>
        </Link></Item>

      </Menu>
    </div>
    """
  end
end
