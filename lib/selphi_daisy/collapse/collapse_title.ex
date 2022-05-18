defmodule SelphiDaisy.Collapse.Title do
  @moduledoc """
  组件Collapse.Title
  """
  use Surface.Component, slot: "title"

  @doc "其他tw类"
  prop class, :css_class, default: []

  @doc "标题,如果没有slot，则使用标题"
  prop label, :string

  @doc "clappse 内容"
  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class={["collapse-title", "text-xl", "font-medium"] ++ @class}>
      <#slot>{@label}</#slot>
    </div>
    """
  end

end