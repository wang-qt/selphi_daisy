defmodule SelphiDaisy.Menu do
  @moduledoc """
  Menu is used to display a list of links vertically or horizontally.
  by https://daisyui.com/components/menu/

  Menu 使用 Surface.Components.{Link, LiveRedirect, LivePatch} 产生 <a>.

  菜单说明
  1. 菜单项包含图标和文字，文字在mobile隐藏，桌面可以设置显示/隐藏文字。
  2. 菜单分为 桌面菜单和mobile菜单

  - menu	Component	Container <ul> element
  - menu-normal	Responsive	Normal text size and normal spacing (default)
  - menu-compact	Responsive	Smaller text size and compact spacing
  - menu-vertical	Responsive	Vertical menu (default)
  - menu-horizontal	Responsive	Horizontal menu
  """
  use Surface.Component

  @color_values ~w(neutral primary  secondary accent )

  @doc """
   菜单背景色和文本色.<Menu color="primary"></Menu>
  """
  prop color, :string, default: nil, values: @color_values


  @doc """
  紧凑菜单，mobile菜单使用。使用方法 <Menu compact></Menu>
  """
  prop compact, :boolean


  @doc """
  水平菜单，默认为垂直菜单。使用方法 <Menu horizontal></Menu>
  """
  prop horizontal, :boolean


  @doc "添加响应式样式，eg. rounded-box menu-compact lg:menu-normal, 以及其他样式 "
  prop class, :css_class, default: []


  @doc "菜单 slot"
  slot default, required: true

  def render(assigns) do
    ~F"""
    <ul class={[
                 "menu",
                 "menu-compact": @compact,
                 "menu-horizontal": @horizontal
              ] ++ color_class(assigns)
                ++ @class } >
      <#slot />
    </ul>
    """
  end

  defp color_class(assigns = %{color: color}) do
    case color do
      "neutral" -> ["bg-neutral", "text-neutral-content"]
      "primary" -> ["bg-primary", "text-primary-content"]
      "secondary" -> ["bg-secondary", "text-secondary-content"]
      "accent" -> ["bg-accent", "text-accent-content"]
      _ -> ["bg-base-100"]
    end
  end

end