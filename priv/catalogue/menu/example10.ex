defmodule SelphiDaisy.Menu.Example10 do
  @moduledoc """
   Menu 水平菜单.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "150px",
      title: "Horizontal",
      direction: "vertical"

  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 bg-base-200 min-h-screen">
      <Menu horizontal class="shadow-xl rounded-box">
        <Item > <Link to="#" label="item 1"/></Item>
        <Item > <Link to="#" label="item 2" /></Item>
        <Item > <Link to="#" label="item 3"/></Item>
      </Menu>
    </div>
    """
  end
end
