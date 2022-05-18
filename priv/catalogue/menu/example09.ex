defmodule SelphiDaisy.Menu.Example09 do
  @moduledoc """
   Menu 响应式，桌面为 normal，mobile 为 compact.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "300px",
      title: "Responsive (compact by default, normal on large screen)",
      direction: "vertical"

  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 bg-base-200 min-h-screen">
      <Menu  class="shadow-xl menu-compact md:menu-normal w-56">
        <Item > <Link to="#" label="item 1"/></Item>
        <Item > <Link to="#" label="item 2" /></Item>
        <Item > <Link to="#" label="item 3"/></Item>
      </Menu>
    </div>
    """
  end
end
