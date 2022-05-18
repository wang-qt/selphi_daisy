defmodule SelphiDaisy.Link.Example03 do
  @moduledoc """
  Link使用 color属性.
  ~w(neutral primary secondary accent   )
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Link,
      height: "150px",
      title: "color Link"

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 ">
      <Link>I'm a simple link </Link> <br>
      <Link color="primary">I'm a simple link </Link> <br>
      <Link color="secondary">I'm a simple link </Link><br>
      <Link color="accent">I'm a simple link </Link><br>
      <Link color="neutral">I'm a simple link </Link>
    </div>
    """
  end
end
