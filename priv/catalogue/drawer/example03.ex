defmodule SelphiDaisy.Drawer.Example03 do
  @moduledoc """
  Drawer  使用示例，桌面顶部导航，mobile 显示 drawer
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Drawer,
      height: "300px",
      title: "Navbar menu for desktop + sidebar drawer for mobile",
      direction: "vertical"

  alias     SelphiDaisy.Drawer.{Content,Sidebar}
  alias     SelphiDaisy.{Swap,Heroicons}

  def render(assigns) do
    ~F"""
    <Drawer id="my-drawer" >
      <Content>
        <!-- Navbar -->
        <div class="w-full navbar bg-base-300">
          <div class="flex-none sm:hidden">
            <Context get={SelphiDaisy.Drawer, drawer_id: drawer_id}>
              <label for={drawer_id} class="btn btn-square btn-ghost">
                  <Heroicons name="menu"  />
              </label>
            </Context>
          </div>
          <div class="flex-1 px-2 mx-2">Navbar Title</div>
          <div class="flex-none hidden sm:block">
            <ul class="menu menu-horizontal">
              <!-- Navbar menu content here -->
              <li><a>Navbar Item 1</a></li>
              <li><a>Navbar Item 2</a></li>
            </ul>
          </div>
        </div>
        <!-- Page content here -->
        Content
      </Content>
      <Sidebar>
        <!-- Sidebar content here -->
        <li><a>Sidebar Item 1</a></li>
        <li><a>Sidebar Item 2</a></li>
      </Sidebar>
    </Drawer>
    """
  end


end