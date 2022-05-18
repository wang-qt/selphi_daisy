defmodule SelphiDaisy.Menu.Example12 do
  @moduledoc """
   Menu 图标菜单.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "300px",
      title: "With icons",
      direction: "vertical"

  alias SelphiDaisy.Heroicons
  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 bg-base-200 min-h-screen">
      <Menu  class="shadow-xl w-56 p-2 rounded-box">
        <Item ><Link to="#" >
                   <Heroicons name="home"   />
                   Home
        </Link></Item>
        <Item ><Link to="#" >
                   <Heroicons name="information-circle"  />
                   item 2
        </Link></Item>
        <Item ><Link to="#" >
                   <Heroicons name="chart-bar"  />
                   item 3
        </Link></Item>

      </Menu>
    </div>
    """
  end
end
