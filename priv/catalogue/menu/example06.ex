defmodule SelphiDaisy.Menu.Example06 do
  @moduledoc """
   Menu  样式，鼠标悬浮菜单项 显示侧边框 hover-bordered.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "300px",
      title: "Item with border (on hover)"

  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 bg-base-200 min-h-screen">
      <Menu class="shadow-xl w-56">
        <Item bordered > <Link to="#" label="item 1"/></Item>
        <Item  hover_bordered> <Link to="#" label="item 2" /></Item>
        <Item > <Link to="#" label="item 3"/></Item>
      </Menu>
    </div>
    """
  end
end
