defmodule SelphiDaisy.Card.Example07 do
  @moduledoc """
  小屏幕为`card-compact`较小padding和字体,`lg:card-normal`较大padding和字体.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Card,
      height: "600px",
      title: "07-responsive compact (card-compact lg:card-normal)",
      direction: "vertical"

  alias SelphiDaisy.Card.{Figure,Body}
  alias SelphiDaisy.Card.Body.{Title,Text,Action}

  def render(assigns) do
    ~F"""
    <Card  class="w-80 card-bordered card-compact lg:card-normal" >
      <Figure >
        <img src="https://picsum.photos/id/1005/400/250">
      </Figure>
      <Body>
        <Title>
          This card is compact only on small screens
        </Title>
        <Text>
           Rerum reiciendis beatae tenetur excepturi aut pariatur est eos. Sit sit necessitatibus veritatis sed molestiae voluptates incidunt iure sapiente.
        </Text>
      </Body>
    </Card>
    """
  end

end