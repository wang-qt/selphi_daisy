defmodule SelphiDaisy.Menu.Example17 do
  @moduledoc """
   Menu 水平菜单，带有子菜单.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "300px",
      title: "  Horizontal with submenu ",
      direction: "vertical"

  alias SelphiDaisy.Heroicons
  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-start justify-center gap-2 bg-base-200 min-h-screen">
      <Menu  horizontal class="shadow-xl rounded-box ">
        <Item >
           <Link to="#" >item 1 </Link>
        </Item>
        <Item opts={tabindex: "0"}>
            <span>Parent</span>
            <SubMenu class="bg-base-100" >
               <Item ><Link to="#" >subitem 1 </Link> </Item>
               <Item ><Link to="#" >subitem 2 </Link> </Item>
               <Item ><Link to="#" >subitem 3 </Link> </Item>
            </SubMenu>
        </Item>
        <Item >
           <Link to="#" >item 2 </Link>
        </Item>
      </Menu>
    </div>
    """
  end
end
