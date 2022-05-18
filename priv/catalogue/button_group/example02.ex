defmodule SelphiDaisy.ButtonGroup.Example02 do
  @moduledoc """
  使用Button tag.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonGroup,
      height: "500px",
      title: "Button group"

  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <ButtonGroup class="my-2">
    <Button class="btn btn-lg btn-active">Large</Button>
    <Button class="btn btn-lg">Large</Button>
    <Button class="btn btn-lg">Large</Button>
    <Button class="btn btn-lg">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-4 stroke-current">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"></path>
    </svg>
    </Button>
    </ButtonGroup>

    <ButtonGroup class="my-2">
    <Button class="btn  btn-active">Normal</Button>
    <Button >Normal</Button>
    <Button >Normal</Button>
    <Button >
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-4 stroke-current">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"></path>
    </svg>
    </Button>
    </ButtonGroup>

    <ButtonGroup class="my-2">
    <Button class="btn btn-sm btn-active">Small</Button>
    <Button class="btn btn-sm">Small</Button>
    <Button class="btn btn-sm">Small</Button>
    <Button class="btn btn-sm">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-4 stroke-current">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"></path>
    </svg>
    </Button>
    </ButtonGroup>

    <ButtonGroup class="my-2">
    <Button class="btn btn-xs ">Tiny</Button>
    <Button class="btn btn-xs btn-active">Tiny</Button>
    <Button class="btn btn-xs">Tiny</Button>
    <Button class="btn btn-xs">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-4 stroke-current">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"></path>
    </svg>
    </Button>
    </ButtonGroup>
    """
  end

end