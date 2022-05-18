defmodule SelphiDaisy.Collapse.Content do
  @moduledoc """
  组件Collapse.Content
  """
  use Surface.Component

  @doc "clappse 内容"
  slot default, required: true

  def render(assigns ) do
    ~F"""
    <div class="collapse-content">
       <#slot />
    </div>
    """
  end

end