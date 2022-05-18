defmodule SelphiDaisy.Card.Example03 do
  @moduledoc """
  action 为 badge.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Card,
      height: "600px",
      title: "03-card"

  alias SelphiDaisy.Card.{Figure,Body}
  alias SelphiDaisy.Card.Body.{Title,Text,Action}

  def render(assigns) do
    ~F"""
    <Card>
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
            <div class="badge badge-ghost">Article</div>
            <div class="badge badge-primary">Primary</div>
            <div class="badge badge-secondary">Secondary</div>
            <div class="badge badge-accent">Accent</div>
            <div class="badge badge-neutral">Neutral</div>
        </Action>
      </Body>
    </Card>
    """
  end

end