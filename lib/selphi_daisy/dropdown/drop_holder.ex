defmodule SelphiDaisy.Dropdown.DropHolder  do
  @moduledoc """
  组件 Dropdown 的内容，临时使用。一般使用 Menu、Card 组件(添加 dropdown-content)。
  """
  use Surface.Component

  @doc "菜单项列表 <li> 列表"
  slot default

  def render(assigns) do
    ~F"""
    <div tabindex="0" class="p-2 shadow  dropdown-content">
       <#slot />
    </div>
    """
  end

end