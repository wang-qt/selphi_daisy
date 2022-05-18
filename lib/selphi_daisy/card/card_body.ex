defmodule SelphiDaisy.Card.Body do
  @moduledoc """
  Card body text component
  """

  use Surface.Component


  @doc "action 对齐方式，`justify-end`"
  prop class, :css_class, default: []

  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class={["card-body"] ++ @class}>
      <#slot />
    </div>
    """
  end
end