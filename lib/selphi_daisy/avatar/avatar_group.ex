defmodule SelphiDaisy.Avatar.Group do
  @moduledoc """
   Avatar.Group 组件。

  as defined by https://daisyui.com/components/avatar

  在 Avatar.Group group 中 使用 avatar，只能改变 size
  """
  use Surface.Component

  @doc "头像 <img> 列表 "
  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class="avatar-group -space-x-6">
       <#slot />
    </div>
    """
  end

end