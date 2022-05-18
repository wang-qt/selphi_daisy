defmodule  SelphiDaisy.Menu.SubMenu do
  @moduledoc """
  Menu.SubMenu 子菜单容器，包含子菜单项.产生 <ul>标签，并设置样式
  eg. rounded-box p-2 bg-base-100

  SubMenu 的slot中还可以包含 Item，是个递归的过程。SubMenu 可以用作 2，3等子菜单容器
  ```
  <Menu>
     <Item>1</Item>
     <Item>2</Item>
     <Item>
         <span>3</span>
         <SubMenu>
             <Item>3-1</Item>
             <Item>3-2</Item>
         </SubMenu>
     </Item>
  </Menu>
  ```
  """
  use Surface.Component

  @doc "添加其他样式，eg. rounded-box bg-base-100 p-2 "
  prop class, :css_class, default: []


  @doc """
  SubMenu slot 填写 Item 组件 .
  """
  slot default, required: true


  def render(assigns) do
    ~F"""
    <ul
        class={ @class } >
      <#slot />
    </ul>
    """
  end

end