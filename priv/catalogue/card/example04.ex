defmodule SelphiDaisy.Card.Example04 do
  @moduledoc """
  Body居中，图片图片添加padding，action 居中，`shadow为2xl`.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Card,
      height: "600px",
      title: "04-card with shadow, image-full, small image size"

  alias SelphiDaisy.Card.{Figure,Body}
  alias SelphiDaisy.Card.Body.{Title,Text,Action}

  def render(assigns) do
    ~F"""
    <Card text_align="center" shadow="2xl">
      <Figure class="px-10 pt-10">
        <img src="https://picsum.photos/id/1005/400/250" class="rounded-xl">
      </Figure>
      <Body>
        <Title>
          shadow, center, padding
        </Title>
        <Text>
           Rerum reiciendis beatae tenetur excepturi aut pariatur est eos. Sit sit necessitatibus veritatis sed molestiae voluptates incidunt iure sapiente.
        </Text>
        <Action class="justify-center">
            <button class="btn btn-outline btn-accent">More info</button>
        </Action>
      </Body>
    </Card>
    """
  end

end