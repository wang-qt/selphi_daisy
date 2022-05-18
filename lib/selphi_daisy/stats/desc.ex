defmodule SelphiDaisy.Stats.Desc do
  @moduledoc """
  stat desc slot
  """

  use Surface.Component, slot: "desc"

  prop class, :css_class, default: []

end