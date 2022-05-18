defmodule SelphiDaisy.Card.Example06 do
  @moduledoc """
  Body居中，图片图片添加padding，action 居中，`shadow为2xl`.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Card,
      height: "600px",
      title: "06-card with shadow, image-full, small image size"

  alias SelphiDaisy.Card.{Figure,Body}
  alias SelphiDaisy.Card.Body.{Title,Text,Action}

  def render(assigns) do
    ~F"""
    <Card   shadow="sm" color="accent" >
      <Figure >
        <img src="https://picsum.photos/id/1005/400/250" class="w-full">
      </Figure>
      <Body class="justify-end">
        <Title>
          Accent color
        </Title>
        <Text>
           Rerum reiciendis beatae tenetur excepturi aut pariatur est eos. Sit sit necessitatibus veritatis sed molestiae voluptates incidunt iure sapiente.
        </Text>
        <Action>
            <button class="btn btn-secondary">More info</button>
        </Action>
      </Body>
    </Card>
    """
  end

end