defmodule SelphiDaisy.Dropdown.Example09 do
  @moduledoc """
  `Dropdown`类型 type="hover"
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Dropdown,
      height: "250px",
      title: "Dropdown on hover",
      direction: "vertical"

  alias   SelphiDaisy.Dropdown.{MenuHolder}
  alias   SelphiDaisy.Menu
  alias   SelphiDaisy.Menu.{Item}
  alias   Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class=" h-48 flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
    <Dropdown  type="hover" class="mb-32">
      {!-- 手动添加 dropdown-content --}
      <Menu class="dropdown-content shadow-xl w-56 ">
        <Item> <Link to="#" label="item 1"/></Item>
        <Item> <Link to="#" label="item 2"/></Item>
      </Menu>
    </Dropdown>
    <Dropdown  type="hover" pop_pos="left" class="mb-32">
      {!-- 手动添加 dropdown-content --}
      <Menu class="dropdown-content shadow-xl w-56 ">
        <Item> <Link to="#" label="item 1"/></Item>
        <Item> <Link to="#" label="item 2"/></Item>
      </Menu>
    </Dropdown>
    </div>
    """
  end
end