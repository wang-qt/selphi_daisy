defmodule SelphiDaisy.Link.Example04 do
  @moduledoc """
  Link使用 hover 属性.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Link,
      height: "150px",
      title: "hover Link"

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 ">
      <Link hover>I'm a simple link </Link> <br>
      <Link hover color="primary">I'm a simple link </Link> <br>
      <Link hover color="secondary">I'm a simple link </Link><br>
      <Link hover color="accent">I'm a simple link </Link><br>
      <Link hover color="neutral">I'm a simple link </Link>
    </div>
    """
  end
end
