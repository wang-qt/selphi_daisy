defmodule SelphiDaisy.Menu.Example08 do
  @moduledoc """
   Menu  样式 Compact，  紧凑菜单，字体 padding变小.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "300px",
      title: "Compact"

  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 bg-base-200 min-h-screen">
      <Menu compact class="shadow-xl w-56">
        <Item > <Link to="#" label="item 1"/></Item>
        <Item > <Link to="#" label="item 2" /></Item>
        <Item > <Link to="#" label="item 3"/></Item>
      </Menu>
    </div>
    """
  end
end
