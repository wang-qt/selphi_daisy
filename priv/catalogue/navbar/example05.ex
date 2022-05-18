defmodule SelphiDaisy.Navbar.Example05 do
  @moduledoc """
   Navbar 带有菜单和子菜单.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Navbar,
      height: "300px",
      title: "Navbar with search input and dropdown",
      direction: "vertical"

  alias SelphiDaisy.ButtonLink
  alias SelphiDaisy.Heroicons
  alias SelphiDaisy.Menu
  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}
  alias SelphiDaisy.Dropdown
  alias SelphiDaisy.Dropdown.Label
  alias SelphiDaisy.Avatar
  alias SelphiDaisy.Badge


  def render(assigns) do
    ~F"""
    <div class="p-2 flex flex-wrap items-start justify-center gap-2 bg-base-200 min-h-screen">
       <Navbar class="shadow-xl rounded-box">
           <div class="flex-1">
             <ButtonLink color="ghost" class="normal-case text-xl">daisyUI</ButtonLink>
           </div>
           <div class="flex-none gap-2">
             <div class="form-control">
               <input type="text" placeholder="Search" class="input input-bordered">
             </div>
             <Dropdown pop_pos="end">
               {!-- 按钮为头像, 关键！Label 要添加 btn-ghost btn-circle 样式 --}
               <Label class="btn-ghost btn-circle">
                 <Avatar size="10" indicator="online" >
                   <img src="https://api.lorem.space/image/face?hash=28212">
                 </Avatar>
               </Label>
               {!-- 手动添加 dropdown-content --}
               <Menu compact class="dropdown-content shadow w-56 rounded-box mt-3 p-2">
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
           </div>
       </Navbar>
    </div>
    """
  end
end
