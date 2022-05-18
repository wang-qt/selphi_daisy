defmodule SelphiDaisy.Alert do
  @moduledoc """
  A Alert element as defined by https://daisyui.com/components/alert
  """
  use Surface.Component


  @doc "Css classes to propagate down to alert. Default class is `alert`,
  additional is `alert-info`,`alert-success`,`alert-warning`,`alert-error`"
  prop class, :css_class, default: []


  @doc """
  The content of the generated `<alert>` element.
  """
  slot default, required: true

  @doc "alert icon, 通过 <Icon><svg>...</svg></Icon> 设置 svg 图标，如果不提供则不显示图标"
  slot icon

  @doc "alert action, 通过 <Action><button>...</button></Action> 设置按钮，如果不提供则不显示按钮"
  slot action


  def render(assigns) do
    ~F"""
<div class={["alert"] ++ @class }>
  <div class="flex-1">
    <#slot name="icon" />
    <label>
      <#slot />
    </label>
  </div>
  <div :if={slot_assigned?(:action)}  class="flex-none">
    <#slot name="action" />
  </div>
</div>
    """
  end


end
