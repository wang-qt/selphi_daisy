defmodule SelphiDaisy.Menu.Example22  do
  @moduledoc """
   Menu  .
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Menu,
      height: "600px",
      title: "Menu color"

  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 bg-base-200 min-h-screen">
      <Menu color="primary" class="shadow-xl w-56">
        <Item> <Link to="#" label="item 1"/></Item>
        <Item> <Link to="#" label="item 2"/></Item>
        <Item> <Link to="#" label="item 3"/></Item>
      </Menu>
      <Menu color="secondary" class="shadow-xl w-56">
        <Item> <Link to="#" label="item 1"/></Item>
        <Item> <Link to="#" label="item 2"/></Item>
        <Item> <Link to="#" label="item 3"/></Item>
      </Menu>
      <Menu color="accent" class="shadow-xl w-56">
        <Item> <Link to="#" label="item 1"/></Item>
        <Item> <Link to="#" label="item 2"/></Item>
        <Item> <Link to="#" label="item 3"/></Item>
      </Menu>
      <Menu color="neutral" class="shadow-xl w-56">
        <Item> <Link to="#" label="item 1"/></Item>
        <Item> <Link to="#" label="item 2"/></Item>
        <Item> <Link to="#" label="item 3"/></Item>
      </Menu>


    </div>
    """
  end
end
