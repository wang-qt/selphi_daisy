defmodule SelphiDaisy.Drawer.Example01 do
  @moduledoc """
  Drawer 使用示例 默认不显示drawer，点击显示.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Drawer,
      height: "300px",
      title: "Drawer",
      direction: "vertical"

  alias     SelphiDaisy.Drawer.{Content,Sidebar}

  def render(assigns) do
    ~F"""
    <Drawer id="my-drawer">
      <Content class="items-center justify-center">
        <Context get={SelphiDaisy.Drawer, drawer_id: drawer_id}>
          <!-- Page content here -->
          <label for={drawer_id} class="btn btn-primary drawer-button">Open drawer</label>
        </Context>
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