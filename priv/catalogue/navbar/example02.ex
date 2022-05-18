defmodule SelphiDaisy.Navbar.Example02 do
  @moduledoc """
   Navbar 只有标题和图标.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Navbar,
      height: "150px",
      title: "Navbar with title and icon",
      direction: "vertical"

  alias SelphiDaisy.ButtonLink
  alias SelphiDaisy.Heroicons


  def render(assigns) do
    ~F"""
    <div class="p-2 flex flex-wrap items-start justify-center gap-2 bg-base-200 min-h-screen">
       <Navbar class="shadow-xl rounded-box">
           <div class="flex-1">
             <ButtonLink color="ghost" class="normal-case text-xl">daisyUI</ButtonLink>
           </div>
           <div class="flex-none">
             <ButtonLink  shape="square" color="ghost" >
               <Heroicons name="dots-horizontal"  />
             </ButtonLink>
           </div>
       </Navbar>
    </div>
    """
  end
end
