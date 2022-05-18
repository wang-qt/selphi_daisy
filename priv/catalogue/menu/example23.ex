defmodule SelphiDaisy.Menu.Example23  do
  @moduledoc """
   Menu 连接类型 LiveRedirect, LivePatch.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "300px",
      title: "Menu LiveRedirect, LivePatch"

  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 bg-base-200 min-h-screen">
      <Menu  class="shadow-xl w-56">
        <Item> <LiveRedirect to="#" label="item 1" /></Item>
        <Item> <LiveRedirect to="#" label="item 2" replace  /></Item>
        <Item> <LiveRedirect to="#" label="item 3" opts={tabindex: "0"}  /></Item>
      </Menu>
      <Menu  class="shadow-xl w-56">
        <Item> <LivePatch to="#" label="item 1" /></Item>
        <Item> <LivePatch to="#" label="item 2" replace  /></Item>
        <Item> <LivePatch to="#" label="item 3" opts={tabindex: "0"}  /></Item>
      </Menu>

    </div>
    """
  end
end
