defmodule SelphiDaisy.Dropdown.Example11 do
  @moduledoc """
  `Dropdown`类型 "
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Dropdown,
      height: "400px",
      title: " Dropdown in navbar",
      direction: "vertical"

  alias   SelphiDaisy.Dropdown.Label
  alias   SelphiDaisy.Avatar
  alias   SelphiDaisy.Menu
  alias   SelphiDaisy.Menu.{Item}
  alias   Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class=" h-48 flex min-h-[6rem] min-w-[20rem]  flex-wrap items-start justify-center gap-2 overflow-x-hidden">
      <div class="navbar bg-base-300 rounded-box w-full">
        <div class="flex-1 px-2 lg:flex-none">
          <a class="text-lg font-bold">daisyUI</a>
        </div>
        <div class="flex justify-end flex-1 px-2">
          <div class="flex items-stretch">
            <a class="btn btn-ghost rounded-btn">Button</a>
            <Dropdown pop_pos="end">
              {!-- 手动添加 dropdown-content --}
              <Menu class="dropdown-content shadow-xl w-56 ">
                <Item> <Link to="#" label="item 1"/></Item>
                <Item> <Link to="#" label="item 1"/></Item>
              </Menu>
            </Dropdown>
          </div>
        </div>
      </div>
    </div>

    <div class=" h-48 flex min-h-[6rem] min-w-[20rem]  flex-wrap items-start justify-center gap-2 overflow-x-hidden">
      <div class="navbar bg-base-300 rounded-box w-full">
        <div class="flex-1 px-2 lg:flex-none">
          <a class="text-lg font-bold">daisyUI</a>
        </div>
        <div class="flex justify-end flex-1 px-2">
          <div class="flex flex-none gap-2">
            <a class="btn btn-ghost rounded-btn">Button</a>
            <Dropdown pop_pos="end">
              {!-- 按钮为头像, 关键！Label 要添加 btn-ghost btn-circle 样式 --}
              <Label class="btn-ghost btn-circle">
                <Avatar size="10" indicator="online" >
                <img src="https://api.lorem.space/image/face?hash=28212">
               </Avatar>
              </Label>
              {!-- 手动添加 dropdown-content --}
              <Menu class="dropdown-content shadow-xl w-56 ">
                <Item> <Link to="#" label="item 1"/></Item>
                <Item> <Link to="#" label="item 1"/></Item>
              </Menu>
            </Dropdown>
          </div>
        </div>
      </div>
    </div>


    """
  end
end