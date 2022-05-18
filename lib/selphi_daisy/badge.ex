defmodule SelphiDaisy.Badge do
  @moduledoc """
  A Badge element as defined by  https://daisyui.com/components/badge

  - badge	`Component`	Container element
  - badge-outline	`Utility`	transparent badge with [colorful] border
  - badge-lg	`Responsive`	badge with large size
  - badge-md	`Responsive`	badge with medium size (default)
  - badge-sm	`Responsive`	badge with small size
  - badge-xs	`Responsive`	badge with extra small size
  - badge-primary	`Responsive`	badge with `primary` color
  - badge-secondary	`Responsive`	badge with `secondary` color
  - badge-accent	`Responsive`	badge with `accent` color
  - badge-ghost	`Responsive`	badge with `ghost` color
  - badge-info	`Responsive`	badge with `info` color
  - badge-success	`Responsive`	badge with `success` color
  - badge-warning	`Responsive`	badge with `warning` color
  - badge-error	`Responsive`	badge with `error` color
  """
  use Surface.Component

  @doc "Css classes to propagate down to button. Default class if no class supplied is simply _btn_"
  prop class, :css_class, default: []

  @doc """
  The content of the generated `<div>` element.
  """
  slot default

  def render(assigns) do
    ~F"""
     <div class={["badge"] ++ @class}>
       <#slot />
     </div>
    """
  end

end