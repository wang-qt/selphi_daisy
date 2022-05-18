defmodule SelphiDaisy.Menu.Example13 do
  @moduledoc """
   Menu 只显示图标.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "300px",
      title: "Only icons",
      direction: "vertical"

  alias SelphiDaisy.Heroicons
  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 bg-base-200 min-h-screen">
      <Menu  class="shadow-xl rounded-box">
        <Item ><Link to="#" >
                   <Heroicons name="home"   />
        </Link></Item>
        <Item ><Link to="#" >
                   <Heroicons name="information-circle"  />
        </Link></Item>
        <Item ><Link to="#" >
                   <Heroicons name="chart-bar"  />
        </Link></Item>
      </Menu>
    </div>
    """
  end
end
