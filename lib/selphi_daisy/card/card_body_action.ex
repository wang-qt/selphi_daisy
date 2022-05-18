defmodule SelphiDaisy.Card.Body.Action  do
  @moduledoc """
  Card body action component
  """
  use Surface.Component

  @doc "action 对齐方式，`justify-center`"
  prop class, :css_class, default: []

  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class={["card-actions"] ++ @class}>
      <#slot />
    </div>
    """
  end

end