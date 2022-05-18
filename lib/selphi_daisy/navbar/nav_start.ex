defmodule SelphiDaisy.Navbar.NavStart do
  @moduledoc """
  Navbar 左半边
  - navbar-start	`Component`	Child element, fills 50% of width to be on start
  """
  use Surface.Component, slot: "nav_start"

  @doc "添加其他样式，eg. hidden lg:flex "
  prop class, :css_class, default: []


  @doc """
  Solt 主要填写 Dropdown, Menu, Button, FormControl, Avatar 和 Drawer Icon.
  """
  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class={["navbar-start"] ++ @class }>
      <#slot />
    </div>
    """
  end


end