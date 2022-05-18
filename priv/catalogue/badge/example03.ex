defmodule SelphiDaisy.Badge.Example03 do
  @moduledoc """
   Badge组件 内容为空 .
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Badge,
      height: "90px",
      title: "empty badge",
      direction: "vertical"

  def render(assigns) do
    ~F"""
    <Badge class="badge-lg"></Badge>
    <Badge class="badge-md"></Badge>
    <Badge class="badge-sm"></Badge>
    <Badge class="badge-xs"></Badge>
    """
  end

end