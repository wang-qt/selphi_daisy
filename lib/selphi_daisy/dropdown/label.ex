defmodule SelphiDaisy.Dropdown.Label  do
  @moduledoc """
  组件 Dropdown 的按钮 ，一般为 Button，也可以是 图标、头像 等.
  """
  use Surface.Component, slot: "label"

  @doc "其他tw类, btn-circle btn-ghost btn-xs text-info-content "
  prop class, :css_class, default: []


  @doc "按钮内容"
  slot default

  def render(assigns) do
    ~F"""
    <label tabindex="0" class={["btn"] ++@class}>
        <#slot>Click</#slot>
    </label>
    """
  end

end