defmodule SelphiDaisy.ButtonLink.Example06 do
  @moduledoc """
  响应式button.
  @size_values  ~w(lg md  sm  xs )
  @shape_values ~w(circle square)
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "150px",
      title: "responsive buttons",
      direction: "vertical"



  def render(assigns) do
    ~F"""
    <div>
    <ButtonLink size="xs" class="md:btn-sm lg:btn-md xl:btn-lg">resize your browser</ButtonLink>
    <ButtonLink size="xs" shape="square" class="md:btn-sm lg:btn-md xl:btn-lg">
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-4 h-4 stroke-current md:w-6 md:h-6">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
      </svg>
    </ButtonLink>

    <ButtonLink size="xs" shape="circle"  class="md:btn-sm lg:btn-md xl:btn-lg">
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-4 h-4 stroke-current md:w-6 md:h-6">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
      </svg>
    </ButtonLink>
    </div>
    """
  end
end
