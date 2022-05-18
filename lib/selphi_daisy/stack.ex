defmodule SelphiDaisy.Stack do
  @moduledoc """
  stack组件 https://daisyui.com/components/stack/
  stack	Component	Puts the child elements on top of each other
  """
  use Surface.Component

  @doc "slot可以是 div img 等元素 "
  slot default

  def render(assigns) do
    ~F"""
    <div class="stack zoom-in"> <#slot /> </div>
    """
  end

end