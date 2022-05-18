defmodule SelphiDaisy.Menu.Example21 do
  @moduledoc """
   Menu 第二级下拉，后续级别全部展开
  The second level will be a dropdown and after that, to avoid a bad UX all levels will be visible with a padding.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "600px",
      title: " A lot of submenus ",
      direction: "vertical"

  alias SelphiDaisy.Heroicons
  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-start justify-center gap-2 bg-base-200 min-h-screen">
      <Menu   class="shadow-xl">
        <Item >
           <Link to="#" >item 1 </Link>
        </Item>
        <Item opts={tabindex: "0"}>
            <span>Parent</span>
            <SubMenu class=" bg-base-100" >
               <Item ><Link to="#" >subitem 1 </Link> </Item>
               <Item >
                   <span>Level 2</span>
                   <SubMenu class=" bg-base-100" >
                      <Item ><Link to="#" >subsubitem 1 </Link> </Item>
                      <Item ><Link to="#" >subsubitem 2 </Link> </Item>
                      <Item >
                         <span>Level 3</span>
                         <SubMenu class=" bg-base-100" >
                           <Item ><Link to="#" >subsubsubitem 1 </Link> </Item>
                           <Item ><Link to="#" >subsubsubitem 2 </Link> </Item>
                           <Item ><Link to="#" >subsubsubitem 3 </Link> </Item>
                           <Item ><Link to="#" >subsubsubitem 4 </Link> </Item>
                           <Item ><Link to="#" >subsubsubitem 5 </Link> </Item>
                         </SubMenu>
                      </Item>
                   </SubMenu>
               </Item>
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
