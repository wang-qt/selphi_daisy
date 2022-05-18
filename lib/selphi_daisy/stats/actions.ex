defmodule SelphiDaisy.Stats.Actions do
  @moduledoc """
  stat actions slot
  """

  use Surface.Component, slot: "actions"

  prop class, :css_class, default: []

end