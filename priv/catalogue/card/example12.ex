defmodule SelphiDaisy.Card.Example12 do
  @moduledoc """
  玻璃效果.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Card,
      height: "700px",
      title: "12-glass card",
      direction: "vertical"

  alias SelphiDaisy.Card.{Figure,Body}
  alias SelphiDaisy.Card.Body.{Title,Text,Action}

  def render(assigns) do
    ~F"""
    <div class="flex items-center w-full px-4 py-10 bg-cover card bg-base-200" style="background-image: url(https://picsum.photos/id/314/1000/300);">
    <Card  class="glass lg:card-side text-neutral-content" >
      <Figure class="p-6">
        <img src="https://picsum.photos/id/1005/400/250">
      </Figure>
      <Body class="max-w-md">
        <Title>
          Glass
        </Title>
        <Text>
           Rerum reiciendis beatae tenetur excepturi aut pariatur est eos. Sit sit necessitatibus veritatis sed molestiae voluptates incidunt iure sapiente.
        </Text>
        <Action>
           <button class="btn glass rounded-full">Get Started</button>
        </Action>
      </Body>
    </Card>
    </div>
    """
  end

end