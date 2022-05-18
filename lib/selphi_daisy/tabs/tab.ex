defmodule SelphiDaisy.Tabs.Tab do
  @moduledoc """
  Defines a tab item for the parent tabs component.

  The tab item instance is automatically added to the
  parent's `tabs` slot.

  每个 Tab 内容区 为状态组件，Tabs 通过 active 状态来切换tab内容区的显示状态
  """
#  use Surface.Component, slot: "tabs"
  use Surface.Component, slot: "tabs"



  @doc "导航文本"
  prop label, :string, required: true

  @doc "icon 为Heroicons组件, Heroicons默认大小和样式"
  prop icon, :string

  @doc "indicator 为 SelphiDaisy.Indicator 组件 "
  prop indicator, :string

  @doc "是否能选中，disabled=false，导航中存在，但不能被选中"
  prop disabled, :boolean, default: false

  @doc "placeholder 方便临时增加删除tab，visible=false 不会出现在导航中，但内容存在。"
  prop visible, :boolean, default: true


end