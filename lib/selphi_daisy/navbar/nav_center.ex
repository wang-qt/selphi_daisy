defmodule SelphiDaisy.Navbar.NavCenter do
  @moduledoc """
  Navbar 中间
  - navbar-center	`Component`	Child element, fills remaining space to be on center
  """
  use Surface.Component, slot: "nav_center"

  @doc "添加其他样式，eg. hidden lg:flex "
  prop class, :css_class, default: []

  @doc """
  Solt 主要填写 Dropdown, Menu, Button, FormControl, Avatar 和 Drawer Icon.
  """
  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class={["navbar-center"] ++ @class} >
      <#slot />
    </div>
    """
  end



end