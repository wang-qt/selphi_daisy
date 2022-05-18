defmodule SelphiDaisy.Badge.Example06 do
  @moduledoc """
   Badge组件 在文本中 .
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Badge,
      height: "300px",
      title: "Badge in text"


  def render(assigns) do
    ~F"""
    <div>
    <div>
    <h2 class="mb-5 text-2xl">
          Heading
      <Badge class=" badge-outline badge-lg">New</Badge>
    </h2>
    </div>
    <div>
    <h2 class="mb-5 text-xl">
          Heading
      <Badge class=" badge-outline badge-md">New</Badge>
    </h2>
    </div>
    <div>
    <h2 class="mb-5 text-lg">
          Heading
      <Badge class=" badge-outline badge-md">New</Badge>
    </h2>
    </div>
    <div>
    <h2 class="mb-5 text-md">
          Heading
      <Badge class=" badge-outline badge-sm">New</Badge>
    </h2>
    </div>
    <div>
    <h2 class="mb-5 text-sm">
          Heading
      <Badge class=" badge-outline badge-sm">New</Badge>
    </h2>
    </div>
    </div>
    """
  end

end