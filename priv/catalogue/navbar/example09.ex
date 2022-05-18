defmodule SelphiDaisy.Navbar.Example09 do
  @moduledoc """
   Navbar 带有indicator 和 头像.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Navbar,
      height: "300px",
      title: " Navbar with colors",
      direction: "vertical"

  alias SelphiDaisy.Navbar.{NavStart,NavCenter,NavEnd}
  alias SelphiDaisy.ButtonLink
  alias SelphiDaisy.Heroicons
  alias SelphiDaisy.Menu
  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}
  alias SelphiDaisy.Dropdown
  alias SelphiDaisy.Dropdown.Label
  alias SelphiDaisy.Avatar
  alias SelphiDaisy.Badge
  alias SelphiDaisy.Indicator
  alias SelphiDaisy.Card
  alias SelphiDaisy.Card.Body


  def render(assigns) do
    ~F"""
    <div class="p-2 flex flex-wrap items-start justify-center gap-2 bg-base-200 min-h-screen">
       <Navbar nav_layout="fixed" color="primary" class="shadow-xl rounded-box">
           <NavStart>
             <Dropdown >
               {!-- 按钮为头像, 关键！Label 要添加 btn-ghost btn-circle 样式 --}
               <Label class="btn-ghost btn-circle  md:hidden ">
                  <Heroicons name="menu-alt2" size="5" />
               </Label>
               {!-- 手动添加 dropdown-content --}
               <Menu compact color="accent" class="dropdown-content shadow w-56 rounded-box mt-3 p-2">
                 <Item>
                   <Link to="#" class="justify-between">
                     Profile
                     <Badge>new</Badge>
                   </Link>
                 </Item>
                 <Item> <Link to="#" label="Settings"/></Item>
                 <Item> <Link to="#" label="Logout"/></Item>
               </Menu>
             </Dropdown>
             <a class="btn btn-ghost normal-case text-xl">daisyUI</a>

           </NavStart>
           <NavCenter class="hidden md:flex">
               <Menu  horizontal color="primary" class="p-0" >
                 <Item >
                    <Link to="#" >item 1 </Link>
                 </Item>
                 <Item opts={tabindex: "0"}>
                    <span> Parent <Heroicons name="chevron-down" size="5" /> </span>
                   <SubMenu class=" bg-secondary text-secondary-content" >
                      <Item ><Link to="#" >subitem 1 </Link> </Item>
                      <Item ><Link to="#" >subitem 2 </Link> </Item>
                      <Item ><Link to="#" >subitem 3 </Link> </Item>
                   </SubMenu>
                 </Item>
                 <Item >
                    <Link to="#" >item 2 </Link>
                 </Item>
               </Menu>
           </NavCenter>
           <NavEnd>
               <ButtonLink color="ghost" shape="circle">
                  <Heroicons name="search" size="5" />
               </ButtonLink>
               <Dropdown pop_pos="end">
                 {!-- 按钮为 indicator, 关键！Label 要添加 btn-ghost btn-circle 样式 --}
                 <Label class="btn-ghost btn-circle">
                   <div class="indicator">
                     <Indicator color="secondary" class="badge-xs"></Indicator>
                     <Heroicons name="bell" size="5" />
                   </div>
                 </Label>
                 {!-- 手动添加 dropdown-content --}
                 <Card shadow="default" class="dropdown-content  mt-3 card card-compact w-52 bg-base-100" >
                   <Body>
                     <span class="font-bold text-lg">8 Items</span>
                     <span class="text-info">Subtotal: $999</span>
                     <Body.Action>
                        <button class="btn btn-primary btn-block">View cart</button>
                     </Body.Action>
                   </Body>
                 </Card>
               </Dropdown>
           </NavEnd>
       </Navbar>
    </div>
    """
  end
end
