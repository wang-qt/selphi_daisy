defmodule SelphiDaisy.Badge.Example02 do
  @moduledoc """
  Badge组件 size .
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Badge,
      height: "90px",
      title: "badge size",
      direction: "vertical"

  def render(assigns) do
    ~F"""
    <Badge class="badge-lg">987,654</Badge>
    <Badge class="badge-md">987,654</Badge>
    <Badge class="badge-sm">987,654</Badge>
    <Badge class="badge-xs">987,654</Badge>
    """
  end

end