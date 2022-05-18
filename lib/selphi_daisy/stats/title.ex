defmodule SelphiDaisy.Stats.Title do
  @moduledoc """
  stat title slot
  """

  use Surface.Component, slot: "title"

  prop class, :css_class, default: []

end