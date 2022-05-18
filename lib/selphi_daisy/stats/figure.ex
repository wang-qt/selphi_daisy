defmodule SelphiDaisy.Stats.Figure do
  @moduledoc """
  stat figure slot
  """

  use Surface.Component, slot: "figure"

  prop class, :css_class, default: []

end