defmodule SelphiDaisy.Link.Example02 do
  @moduledoc """
  Link 默认样式.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Link,
      height: "150px",
      title: "normal Link"


  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 ">
      <p>Tailwind CSS resets the style of links by default.
        <br>
        Add "link" class to make it look like a
        <Link>normal link</Link> again.
      </p>
    </div>
    """
  end
end
