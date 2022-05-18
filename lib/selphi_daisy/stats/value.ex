defmodule SelphiDaisy.Stats.Value do
  @moduledoc """
  stat value slot
  """

  use Surface.Component, slot: "default"

  prop class, :css_class, default: []

  slot default

  def render(assigns) do
    ~F"""
    <div class={["stat-value"] ++ @class }>
        <#slot />
    </div>
    """
  end

end