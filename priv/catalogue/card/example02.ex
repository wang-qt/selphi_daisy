defmodule SelphiDaisy.Card.Example02 do
  @moduledoc """
  Card图片在下 `<Card figure_down="true">`.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Card,
      height: "600px",
      title: "02-card"

  alias SelphiDaisy.Card.{Figure,Body}
  alias SelphiDaisy.Card.Body.{Title,Text,Action}

  def render(assigns) do
    ~F"""
    <Card figure_down="true">
      <Figure>
        <img src="https://picsum.photos/id/1005/400/250" class="w-full">
      </Figure>
      <Body>
        <Title> Top image
           <div class="badge mx-2 badge-secondary">NEW</div>
        </Title>
        <Text>
           Rerum reiciendis beatae tenetur excepturi aut pariatur est eos. Sit sit necessitatibus veritatis sed molestiae voluptates incidunt iure sapiente.
        </Text>
        <Action>
             <button class="btn btn-primary">Login</button>
             <button class="btn btn-ghost">Register</button>
        </Action>
      </Body>
    </Card>
    """
  end

end