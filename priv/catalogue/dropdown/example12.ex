defmodule SelphiDaisy.Dropdown.Example12 do
  @moduledoc """
  `Dropdown` slot 内容 Card
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Dropdown,
      height: "700px",
      title: " Card as dropdown",
      direction: "vertical"

  alias   SelphiDaisy.Dropdown.{MenuHolder}
  alias   SelphiDaisy.Card
  alias   SelphiDaisy.Card.{Body,Figure}
  alias   SelphiDaisy.Card.Body.{Title,Text,Action}

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-start justify-center gap-2 overflow-x-hidden">
    <Dropdown  >
      {!-- 手动添加 dropdown-content --}
      <Card color="primary" class="dropdown-content w-96" opts={tabindex: "0"}>
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
    </Dropdown>
    </div>
    """
  end
end