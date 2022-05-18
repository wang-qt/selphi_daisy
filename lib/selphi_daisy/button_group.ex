defmodule SelphiDaisy.ButtonGroup do
  @moduledoc """
  Group of buttons.

  Can contain
  - Button components
  - Link Components
  - <input> of type checkbox and radio

  https://daisyui.com/components/button-group
  """

  use Surface.Component

  @doc "Css classes to propagate down to button group."
  prop class, :css_class, default: []

  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class={["btn-group"] ++ @class}>
      <#slot />
    </div>
    """
  end

end