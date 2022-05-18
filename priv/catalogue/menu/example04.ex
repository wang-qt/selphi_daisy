defmodule SelphiDaisy.Menu.Example04 do
  @moduledoc """
   Menu  样式菜单项之间有边距 p-2 .
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "300px",
      title: "With padding"

  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 bg-base-200 min-h-screen">
      <Menu class="shadow-xl rounded-box p-2 w-56">
        <Item> <Link to="#" label="item 1"/></Item>
        <Item > <Link to="#" label="item 2" /></Item>
        <Item> <Link to="#" label="item 3"/></Item>
      </Menu>
    </div>
    """
  end
end
