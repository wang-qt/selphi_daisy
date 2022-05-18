defmodule SelphiDaisy.Navbar.NavEnd do
  @moduledoc """
  Navbar 右半边
  - navbar-end	`Component`	Child element, fills 50% of width to be on end
  """
  use Surface.Component, slot: "nav_end"

  @doc "添加其他样式，eg. hidden lg:flex "
  prop class, :css_class, default: []


  @doc """
  Solt 主要填写 Dropdown, Menu, Button, FormControl, Avatar 和 Drawer Icon.
  """
  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class={["navbar-end"] ++ @class} >
      <#slot />
    </div>
    """
  end


end