defmodule SelphiDaisy.Drawer.Sidebar do
  @moduledoc """
  Sidebar 组件，布局侧边导航菜单，包括mobile导航菜单。
  """
  use Surface.Component, slot: "sidebar"

  @doc """
  The content of the generated `<a>` element. If no content is provided.
  """
  slot default

  def render(assigns) do
    ~F"""
    <div class="drawer-side">
      <Context get={SelphiDaisy.Drawer, drawer_id: drawer_id}>
        <label for={drawer_id} class="drawer-overlay"></label>
      </Context>
      <ul class="menu p-4 overflow-y-auto w-80 bg-base-100 text-base-content">

        <#slot />
      </ul>
    </div>
    """
  end
end