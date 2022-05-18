defmodule SelphiDaisy.Card.Example11 do
  @moduledoc """
  没有图片，大屏幕'md:card-side'.
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Card,
      height: "200px",
      title: "11-card without image",
      direction: "vertical"

  alias SelphiDaisy.Card.{Figure,Body}
  alias SelphiDaisy.Card.Body.{Title,Text,Action}

  def render(assigns) do
    ~F"""
    <div class="flex">
    <Card shadow="default" class="mx-5" >
      <Body>
        <Title>
          no border with shadow
        </Title>
        <Text>
           Rerum reiciendis beatae tenetur excepturi
        </Text>
      </Body>
    </Card>
    <Card shadow="lg"  >
      <Body>
        <Title>
          no border with shadow
        </Title>
        <Text>
           Rerum reiciendis beatae tenetur excepturi
        </Text>
      </Body>
    </Card>
    </div>
    """
  end

end