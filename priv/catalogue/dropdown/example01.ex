defmodule SelphiDaisy.Dropdown.Example01 do
  @moduledoc """
  默认`Dropdown`样式..
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Dropdown,
      height: "300",
      title: "Dropdown menu"

  alias   SelphiDaisy.Dropdown.{DropHolder}
  alias   SelphiDaisy.Menu
  alias   SelphiDaisy.Menu.{Item}
  alias   Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class=" flex min-h-[20rem] min-w-[20rem] max-w-4xl flex-wrap items-start justify-center gap-2 overflow-x-hidden">
    <Dropdown class="mb-32">
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