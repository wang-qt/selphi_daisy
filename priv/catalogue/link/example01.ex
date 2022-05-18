defmodule SelphiDaisy.Link.Example01 do
  @moduledoc """
   Link 默认样式.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Link,
      height: "150px",
      title: "Link"


  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 ">
      <Link>I'm a simple link </Link>
    </div>
    """
  end
end
