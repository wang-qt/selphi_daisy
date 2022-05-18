defmodule SelphiDaisy.Badge.Example04 do
  @moduledoc """
   Badge组件 状态和图标.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Badge,
      height: "90px",
      title: "badge variants",
      direction: "vertical"

  alias SelphiDaisy.Heroicons

  def render(assigns) do
    ~F"""
    <Badge class="badge-info">
       <Heroicons name="x" size="4" class="mr-2" />
       info
    </Badge>
    <Badge class="badge-success">
       <Heroicons name="x" size="4" class="mr-2" />
       success
    </Badge>
    <Badge class="badge-warning">
       <Heroicons name="x" size="4" class="mr-2" />
       warning
    </Badge>
    <Badge class="badge-error">
       <Heroicons name="x" size="4" class="mr-2" />
       error
    </Badge>
    """
  end

end