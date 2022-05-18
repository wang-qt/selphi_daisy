defmodule SelphiDaisy.Dropdown.Example02 do
  @moduledoc """
  `Dropdown`位置 pop_pos="end"
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Dropdown,
      height: "350px",
      title: "Dropdown / aligns to end"

  alias   SelphiDaisy.Dropdown.{MenuHolder}
  alias   SelphiDaisy.Menu
  alias   SelphiDaisy.Menu.{Item}
  alias   Surface.Components.{Link, LiveRedirect, LivePatch}

  def render(assigns) do
    ~F"""
    <div class=" h-48 flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
    <Dropdown pop_pos="end" class="mb-32">
      {!-- 手动添加 dropdown-content --}
      <Menu class="dropdown-content shadow-xl w-56 ">
        <Item> <Link to="#" label="item 1"/></Item>
        <Item> <Link to="#" label="item 2"/></Item>
      </Menu>
    </Dropdown>
    </div>
    """
  end

end