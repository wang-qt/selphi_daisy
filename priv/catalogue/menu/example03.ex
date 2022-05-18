defmodule SelphiDaisy.Menu.Example03 do
  @moduledoc """
   Menu  样式 rounded-box.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "300px",
      title: "Menu with rounded corner"

  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 bg-base-200 min-h-screen">
      <Menu class="shadow-xl rounded-box w-56">
        <Item> <Link to="#" label="item 1"/></Item>
        <Item > <Link to="#" label="item 2" class="active"/></Item>
        <Item> <Link to="#" label="item 3"/></Item>
      </Menu>
    </div>
    """
  end
end
