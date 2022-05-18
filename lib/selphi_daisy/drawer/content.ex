defmodule SelphiDaisy.Drawer.Content do
  @moduledoc """
  Content 组件，布局主要部分，包括 顶部导航(navbar),页面主体(main), 底部(footer) 。
  """
  use Surface.Component, slot: "content"

  @doc "默认为列布局(flex flex-col), 其他tw类,eg. items-center justify-center"
  prop class, :css_class, default: []


  @doc """
  The content of the generated `<a>` element. If no content is provided.
  """
  slot default

  def render(assigns) do
    ~F"""
    <div class={["flex", "flex-col", "drawer-content"] ++ @class}>

       <#slot />

    </div>
    """
  end

end