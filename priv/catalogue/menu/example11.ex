defmodule SelphiDaisy.Menu.Example11 do
  @moduledoc """
   Menu 响应式，mobile上默认垂直，桌面上水平.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "300px",
      title: "Responsive (vertical by default, horizontal on large screen)",
      direction: "vertical"

  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 bg-base-200 min-h-screen">
      <Menu  class="shadow-xl rounded-box menu-vertical md:menu-horizontal ">
        <Item > <Link to="#" label="item 1"/></Item>
        <Item > <Link to="#" label="item 2" /></Item>
        <Item > <Link to="#" label="item 3"/></Item>
      </Menu>
    </div>
    """
  end
end
