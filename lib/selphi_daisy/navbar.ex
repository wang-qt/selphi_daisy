defmodule SelphiDaisy.Navbar do
  @moduledoc """
  Navbar is used to show a navigation bar on the top of the page.
  by https://daisyui.com/components/navbar/
  Navbar 用作顶部导航，可以包含菜单(Menu),搜索，下拉菜单(Dropdown)等组件。
  Navbar 放在 Drawer 的内容区。Navbar的所有子元素都是应用`flex items-center` 样式。

  - navbar	`Component`	Container element
  - navbar-start	`Component`	Child element, fills 50% of width to be on start
  - navbar-center	`Component`	Child element, fills remaining space to be on center
  - navbar-end	`Component`	Child element, fills 50% of width to be on end
  """
  use Surface.Component

  @color_values ~w(bg-200 bg-300 neutral primary  secondary accent )

  # self-define: 自己控制nav布局，fixed: nav_start,nav_center,nav_end 三个区域布局
  @layout_values ~w(self-define  fixed )

  @doc """
   Navbar背景色和文本色，默认为base-100 .<Navbar color="primary"></Navbar>
  """
  prop color, :string, default: nil, values: @color_values

  @doc """
  nav支持两种布局方式：self-define: 自己控制nav布局，fixed: nav_start,nav_center,nav_end 三个区域布局
  默认为自定义布局，需要自己控制nav布局，通过 flex 相关类，使用默认 slot。
  """
  prop nav_layout, :string,default: "self-define", values:  @layout_values

  @doc "添加响应式样式, eg.  shadow-xl rounded-box "
  prop class, :css_class, default: []

  @doc "start slot: 左50%. start,center,end slot 同时出现或不出现"
  slot nav_start

  @doc "center slot: 居中. start,center,end slot 同时出现或不出现"
  slot nav_center

  @doc "end slot: 右50%.start,center,end slot 同时出现或不出现"
  slot nav_end

  @doc "default slot. 自己控制布局。"
  slot default

  def render(assigns = %{nav_layout: "self-define"}) do
    ~F"""
    <div class={[ "navbar"] ++ color_class(assigns)
                ++ @class } >
      <#slot />
    </div>
    """
  end
  # start,center,end 布局
  def render(assigns) do
    ~F"""
    <div class={[ "navbar"] ++ color_class(assigns)
                ++ @class } >

       {#if slot_assigned?(:nav_start)}
         <#slot name="nav_start"/>
       {/if}
       {#if slot_assigned?(:nav_center)}
         <#slot name="nav_center"/>
       {/if}
       {#if slot_assigned?(:nav_end)}
         <#slot name="nav_end"/>
       {/if}
    </div>
    """
  end



  # 默认为 bg-base-100
  defp color_class(assigns = %{color: color}) do
    case color do
      "bg-200" -> ["bg-200 "]
      "bg-300" -> ["bg-300 "]
      "neutral" -> ["bg-neutral", "text-neutral-content"]
      "primary" -> ["bg-primary", "text-primary-content"]
      "secondary" -> ["bg-secondary", "text-secondary-content"]
      "accent" -> ["bg-accent", "text-accent-content"]
      _ -> ["bg-base-100"]
    end
  end

end