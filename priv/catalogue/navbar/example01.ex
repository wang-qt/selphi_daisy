defmodule SelphiDaisy.Navbar.Example01 do
  @moduledoc """
   Navbar 只有标题.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Navbar,
      height: "150px",
      title: "Navbar with title only",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div class="p-2 flex flex-wrap items-start justify-center gap-2 bg-base-200 min-h-screen">
       <Navbar class="shadow-xl rounded-box">
         <a class="btn btn-ghost normal-case text-xl">daisyUI</a>
       </Navbar>
    </div>
    """
  end
end
