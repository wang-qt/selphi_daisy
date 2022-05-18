defmodule SelphiDaisy.Card.Example10 do
  @moduledoc """
  没有图片，大屏幕'md:card-side'.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Card,
      height: "500px",
      title: "10-card without image",
      direction: "vertical"

  alias SelphiDaisy.Card.{Figure,Body}
  alias SelphiDaisy.Card.Body.{Title,Text,Action}

  def render(assigns) do
    ~F"""
    <Card  class="md:card-side card-bordered" >
      <Body>
        <Title>No Images
         <div class="badge mx-2">NEW</div>
        </Title>
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