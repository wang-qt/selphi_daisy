defmodule SelphiDaisy.Menu.Item do
  @moduledoc """
  Menu.Item菜单项 产生<li>,并设置<li>样式.
  eg. disabled active menu-title hover-bordered bordered .
  Item 的 slot中还可以包含 SubMenu，SubMenu 的 slot 可以包含 Item，是个递归的过程。
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

  - menu-title	Component	Identify <li> as the title of menu
  - disabled	Modifier	Sets <li> as disabled
  - active	Modifier	highlights the element inside <li> as active
  - bordered
  - hover-bordered
  """
  use Surface.Component

  @doc " li 是 menu-title  "
  prop title, :boolean

  @doc " li 是 active  "
  prop active, :boolean

  @doc " li 是 disabled  "
  prop disabled, :boolean

  @doc " li 始终带侧边边框  "
  prop bordered, :boolean

  @doc " li hover 时，添加侧边边框  "
  prop hover_bordered, :boolean


  @doc "添加其他样式，eg.  "
  prop class, :css_class, default: []

  @doc """
  添加其他属性， opts={tabindex: "0"}
  """
  prop opts, :keyword, default: []

  @doc """
  Solt 主要填写 Surface.Components.{Link, LiveRedirect, LivePatch}，SubMenu组件，以及其他元素 .
  """
  slot default, required: true


  def render(assigns) do
    ~F"""
    <li
       {...@opts}
        class={ [
               "menu-title": @title,
               "active": @active,
               "disabled": @disabled,
               "bordered": @bordered,
               "hover-bordered": @hover_bordered,
              ] ++ @class } >
      <#slot />
    </li>
    """
  end


end