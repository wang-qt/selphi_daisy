defmodule SelphiDaisy.Card.Figure do
  @moduledoc """
  Card figure slot
  """

  use Surface.Component, slot: "figure"

  prop class, :css_class, default: []

end