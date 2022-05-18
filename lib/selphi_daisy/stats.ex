defmodule SelphiDaisy.Stats do
  @moduledoc """
  stat在box中显示统计数据. https://daisyui.com/components/stat/


  - stats	`Component`	Container of multiple stat items
  - stat	`Component`		One stat item
  - stat-title	`Component`		Title text
  - stat-value	`Component`		Value text
  - stat-desc	`Component`		Description text
  - stat-figure	`Component`		For icon, image, etc
  - stats-horizontal	`Responsive`	Shows items horizontally (default)
  - stats-vertical	`Responsive`	Shows items vertically
  """
  use Surface.Component



  @doc "其他tw类，eg. stats-vertical lg:stats-horizontal bg-primary text-primary-content "
  prop class, :css_class, default: []

  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class={["shadow", "stats", "zoom-in"] ++ @class}>
        <#slot />
    </div>
    """
  end


end