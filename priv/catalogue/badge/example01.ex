defmodule SelphiDaisy.Badge.Example01 do
  @moduledoc """
  Badge组件基本使用方法 .
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Badge,
      height: "90px",
      title: "badge ",
      direction: "vertical"

  def render(assigns) do
    ~F"""
    <Badge>neutral</Badge>
    <Badge class="badge-primary">primary</Badge>
    <Badge class="badge-secondary">secondary</Badge>
    <Badge class="badge-accent">accent</Badge>
    <Badge class="badge-ghost">ghost</Badge>
    """
  end

end