defmodule SelphiDaisy.Drawer do
  @moduledoc """
  Drawer 组件，样式 by https://daisyui.com/components/drawer/
  页面最大的布局容器，显示/隐藏 sidebar。还可兼容 mobile。

  - drawer	`Component`	Container element
  - drawer-toggle	`Component`	For checkbox element that controls the drawer
  - drawer-content	`Component`	The content container
  - drawer-side	`Component`	The sidebar container
  - drawer-overlay	`Component`	The label covers the content when drawer is open
  - drawer-mobile	`Modifier`	Makes drawer to open/close on mobile but will be always visible on desktop
  - drawer-end	`Modifier`	puts drawer to the right
  """
  use Surface.Component


  @doc "drawer id "
  prop id, :string,required: true


  @doc "其他tw类 drawer-mobile: 桌面始终显示sidebar，mobile 隐藏sidebar "
  prop class, :css_class, default: []

  @doc "侧边导航菜单 Drawer.Sidebar "
  slot sidebar, required: true

  @doc "页面主体 Drawer.Content "
  slot content, required: true

  def render(assigns) do
    ~F"""
    <div class={["h-screen","drawer","w-full","rounded"] ++ @class}>

      <input id={@id} type="checkbox" class="drawer-toggle">

      <Context put={__MODULE__, drawer_id: @id }>
        {!-- 内容区: navbar main footer --}
        <#slot name="content" />

        {!-- for sidebar--}
        <#slot name="sidebar" />
      </Context>
    </div>
    """
  end
end