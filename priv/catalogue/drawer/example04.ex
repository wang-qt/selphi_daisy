defmodule SelphiDaisy.Drawer.Example04 do
  @moduledoc """
  Drawer 右侧显示
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Drawer,
      height: "300px",
      title: "Drawer that opens from right side of page",
      direction: "vertical"

  alias     SelphiDaisy.Drawer.{Content,Sidebar}
  alias     SelphiDaisy.{Swap,Heroicons}

  def render(assigns) do
    ~F"""
    <Drawer id="my-drawer" class="drawer-end">
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