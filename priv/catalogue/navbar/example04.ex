defmodule SelphiDaisy.Navbar.Example04 do
  @moduledoc """
   Navbar 带有菜单和子菜单.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Navbar,
      height: "300px",
      title: "Navbar with menu and submenu",
      direction: "vertical"

  alias SelphiDaisy.ButtonLink
  alias SelphiDaisy.Heroicons
  alias SelphiDaisy.Menu
  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}


  def render(assigns) do
    ~F"""
    <div class="p-2 flex flex-wrap items-start justify-center gap-2 bg-base-200 min-h-screen">
       <Navbar class="shadow-xl rounded-box">
           <div class="flex-1">
             <ButtonLink color="ghost" class="normal-case text-xl">daisyUI</ButtonLink>
           </div>
           <div class="flex-none">
               <Menu  horizontal class="p-0" >
                 <Item >
                    <Link to="#" >item 1 </Link>
                 </Item>
                 <Item opts={tabindex: "0"}>
                    <span> Parent <Heroicons name="chevron-down" size="5" /> </span>
                   <SubMenu class=" bg-base-100" >
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
       </Navbar>
    </div>
    """
  end
end
