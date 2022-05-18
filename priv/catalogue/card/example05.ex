defmodule SelphiDaisy.Card.Example05 do
  @moduledoc """
  Body居中，图片图片添加padding，action 居中，`shadow为2xl`.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Card,
      height: "600px",
      title: "05-card with shadow, image-full, small image size"

  alias SelphiDaisy.Card.{Figure,Body}
  alias SelphiDaisy.Card.Body.{Title,Text,Action}

  def render(assigns) do
    ~F"""
    <Card   shadow="xl" class="image-full h-full">
      <Figure >
        <img src="https://picsum.photos/id/1005/400/250">
      </Figure>
      <Body class="justify-end">
        <Title>
         Image overlay
        </Title>
        <Text>
           Rerum reiciendis beatae tenetur excepturi aut pariatur est eos. Sit sit necessitatibus veritatis sed molestiae voluptates incidunt iure sapiente.
        </Text>
        <Action>
            <button class="btn btn-primary">Get Started</button>
        </Action>
      </Body>
    </Card>
    """
  end

end