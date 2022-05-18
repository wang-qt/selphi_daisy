defmodule SelphiDaisy.Collapse.Example04 do
  @moduledoc """
  Collapse 箭头图标 icon="arrow"。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Collapse,
      height: "200px",
      title: "With arrow icon",
      direction: "vertical"

  alias   SelphiDaisy.Collapse.{Title,Content}

  def render(assigns) do
    ~F"""
    <div class=" flex min-h-[6rem] min-w-[24rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
    <Collapse icon="arrow" class="border border-base-300 bg-base-100 rounded-box">
      <Title label="title">Focus me to see content</Title>
      <Content>
        <p>tabindex="0" attribute is necessary to make the div focusable</p>
      </Content>
    </Collapse>
    </div>
    """
  end

end