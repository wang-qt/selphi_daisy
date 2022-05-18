defmodule SelphiDaisy.Button.Example10 do
  @moduledoc """
   使用 svg 图标 .
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Button,
      height: "250px",
      title: "icon button start",
      direction: "vertical"


  alias SelphiDaisy.Feather


  # <div class="p-20 bg-cover card bg-base-200" style="background-image: url(https://picsum.photos/id/314/400/300);">
  def render(assigns) do
    ~F"""
    <Button size="lg" color="primary">
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-6 h-6 mr-2 stroke-current">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
      </svg>
      Large
    </Button>
    <Button >
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-6 h-6 mr-2 stroke-current">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
      </svg>
      Normal
    </Button>
    <Button size="sm" >
       <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-4 h-4 mr-2 stroke-current">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
       </svg>
      Small
    </Button>
    <Button size="xs" >
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-4 h-4 mr-1 stroke-current">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
      </svg>
      Tiny
    </Button>
    <Button size="sm" >
       <Feather name="activity" size="5" class="mr-2 text-secondary" />
       Feather
    </Button>
    """
  end
end
