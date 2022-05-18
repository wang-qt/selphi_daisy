defmodule SelphiDaisy.ButtonGroup.Example01 do
  @moduledoc """
  使用button tag.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonGroup,
      height: "500px",
      title: "button group"

  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <ButtonGroup class="my-2">
    <button class="btn btn-lg btn-active">Large</button>
    <button class="btn btn-lg">Large</button>
    <button class="btn btn-lg">Large</button>
    <button class="btn btn-lg">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-4 stroke-current">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"></path>
    </svg>
    </button>
    </ButtonGroup>

    <ButtonGroup class="my-2">
    <button class="btn  btn-active">Normal</button>
    <button class="btn">Normal</button>
    <button class="btn">Normal</button>
    <button class="btn">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-4 stroke-current">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"></path>
    </svg>
    </button>
    </ButtonGroup>

    <ButtonGroup class="my-2">
    <button class="btn btn-sm btn-active">Small</button>
    <button class="btn btn-sm">Small</button>
    <button class="btn btn-sm">Small</button>
    <button class="btn btn-sm">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-4 stroke-current">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"></path>
    </svg>
    </button>
    </ButtonGroup>

    <ButtonGroup class="my-2">
    <button class="btn btn-xs ">Tiny</button>
    <button class="btn btn-xs btn-active">Tiny</button>
    <button class="btn btn-xs">Tiny</button>
    <button class="btn btn-xs">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-4 stroke-current">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"></path>
    </svg>
    </button>
    </ButtonGroup>
    """
  end

end