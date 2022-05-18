defmodule SelphiDaisy.Card.Example08 do
  @moduledoc """
  大屏幕侧边图片'md:card-side'.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Card,
      height: "600px",
      title: "08-card with side image",
      direction: "vertical"

  alias SelphiDaisy.Card.{Figure,Body}
  alias SelphiDaisy.Card.Body.{Title,Text,Action}

  def render(assigns) do
    ~F"""
    <Card  figure_down="true" class="md:card-side card-bordered" >
      <Figure >
        <img src="https://picsum.photos/id/1005/400/250">
      </Figure>
      <Body>
        <Title title="Horizontal" />
        <Text>
           Rerum reiciendis beatae tenetur excepturi aut pariatur est eos. Sit sit necessitatibus veritatis sed molestiae voluptates incidunt iure sapiente.
        </Text>
        <Action>
           <button class="btn btn-primary">Get Started</button>
           <button class="btn btn-ghost">More info</button>
        </Action>
      </Body>
    </Card>
    """
  end

end