defmodule SelphiDaisy.Drawer.Example02 do
  @moduledoc """
  Drawer drawer-mobile 使用示例，Drawer is always open on desktop size.
  Drawer can be toggled on mobile size. Resize the browser to see toggle button on mobile size.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Drawer,
      height: "300px",
      title: "Drawer for mobile + fixed sidebar for desktop",
      direction: "vertical"

  alias     SelphiDaisy.Drawer.{Content,Sidebar}

  def render(assigns) do
    ~F"""
    <Drawer id="my-drawer" class="drawer-mobile">
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