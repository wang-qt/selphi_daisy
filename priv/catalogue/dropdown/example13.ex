defmodule SelphiDaisy.Dropdown.Example13 do
  @moduledoc """
  `Dropdown` slot 内容 Card ,不带图片
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Dropdown,
      height: "400px",
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
        <Body>
          <Title title="Card title!" />
          <Text>
            you can use any element as a dropdown.
          </Text>
        </Body>
      </Card>
    </Dropdown>
    </div>
    """
  end
end