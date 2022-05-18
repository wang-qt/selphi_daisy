defmodule SelphiDaisy.Divider do
  @moduledoc """
  Divider 组件，样式 by https://daisyui.com/components/divider/

  - divider	`Component`	Put a divider line between two elements
  - divider-vertical	`Responsive`	Divide elements on top of each other (default)
  - divider-horizontal	`Responsive`	Divide elements next to each other
  """
  use Surface.Component


  @doc "其他tw类 divider-horizontal sm:divider-vertical, 默认是 divider-vertical "
  prop class, :css_class, default: []

  @doc "分隔线文本"
  slot default

  def render(assigns) do
    ~F"""
    <div class={["divider"] ++ @class}> <#slot />  </div>
    """
  end
end