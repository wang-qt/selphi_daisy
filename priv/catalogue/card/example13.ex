defmodule SelphiDaisy.Card.Example13 do
  @moduledoc """
  mini card.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Card,
      height: "300px",
      title: "13-mini cards",
      direction: "vertical"

  alias SelphiDaisy.Card.{Figure,Body}
  alias SelphiDaisy.Card.Body.{Title,Text,Action}

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-3 gap-4" >
    <Card  shadow="2xl"  color="primary" class="lg:card-side" >
      <Body >
        <Text>
          Rerum reiciendis beatae tenetur excepturi aut pariatur est eos.
        </Text>
        <Action>
           <button class="btn btn-primary">
            More info

            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-6 h-6 ml-2 stroke-current">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
            </svg>
          </button>
        </Action>
      </Body>
    </Card>

    <Card  shadow="2xl"  color="secondary" class="lg:card-side" >
      <Body >
        <Action class="justify-end">
          <button class="btn btn-secondary btn-square">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-6 h-6 stroke-current">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
            </svg>
          </button>
        </Action>
        <Text>
          Rerum reiciendis beatae tenetur excepturi aut pariatur est eos.
        </Text>
      </Body>
    </Card>

    <Card  shadow="2xl"  color="accent" class="lg:card-side text-center" >
      <Body >
        <Text>
          Rerum reiciendis beatae tenetur excepturi aut pariatur est eos.
        </Text>
        <Action>
          <button class="btn btn-accent">Start now</button>
          <button class="btn btn-accent">More info</button>
        </Action>
      </Body>
    </Card>
    </div>
    """
  end

end