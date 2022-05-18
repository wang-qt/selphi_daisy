defmodule SelphiDaisy.Menu.Example07 do
  @moduledoc """
   Menu  样式，  菜单项 disabled.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "300px",
      title: "Disabled items"

  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 bg-base-200 min-h-screen">
      <Menu class="shadow-xl w-56">
        <Item bordered disabled> <Link to="#" label="item 1"/></Item>
        <Item  disabled> <Link to="#" label="item 2" /></Item>
        <Item > <Link to="#" label="item 3"/></Item>
      </Menu>
    </div>
    """
  end
end
