defmodule SelphiDaisy.Card.Example01 do
  @moduledoc """
  基础card使用方式.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Card,
      height: "600px",
      title: "01-card"

  alias SelphiDaisy.Card.{Figure,Body}
  alias SelphiDaisy.Card.Body.{Title,Text,Action}

  def render(assigns) do
    ~F"""
    <Card >
      <Figure>
        <img src="https://picsum.photos/id/1005/400/250" class="w-full">
      </Figure>
      <Body>
        <Title title="Tile title prop" />
        <Text>
           Rerum reiciendis beatae tenetur excepturi aut pariatur est eos. Sit sit necessitatibus veritatis sed molestiae voluptates incidunt iure sapiente.
        </Text>
        <Action class="justify-end">
          <button class="btn btn-secondary">More info</button>
        </Action>
      </Body>
    </Card>
    """
  end

end