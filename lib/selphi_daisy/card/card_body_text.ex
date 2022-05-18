defmodule SelphiDaisy.Card.Body.Text do
  @moduledoc """
  Card body text component
  """

  use Surface.Component

  slot default, required: true

  def render(assigns) do
    ~F"""
    <p>
      <#slot />
    </p>
    """
  end

end