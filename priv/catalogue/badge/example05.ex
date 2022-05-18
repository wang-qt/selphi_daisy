defmodule SelphiDaisy.Badge.Example05 do
  @moduledoc """
   Badge组件 outline .
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Badge,
      height: "90px",
      title: "badge outline",
      direction: "vertical"

  def render(assigns) do
    ~F"""
    <Badge class="badge-outline">neutral</Badge>
    <Badge class="badge-primary badge-outline">primary</Badge>
    <Badge class="badge-secondary badge-outline">secondary</Badge>
    <Badge class="badge-accent badge-outline">accent</Badge>
    """
  end

end