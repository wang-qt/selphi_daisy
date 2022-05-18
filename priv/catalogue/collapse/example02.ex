defmodule SelphiDaisy.Collapse.Example02 do
  @moduledoc """
  type="check" 样式, This collapse works with checkbox instead of focus. It needs to get clicked again to get closed..
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Collapse,
      height: "200px",
      title: "Collapse with checkbox",
      direction: "vertical"

  alias   SelphiDaisy.Collapse.{Title,Content}

  def render(assigns) do
    ~F"""
    <div class=" flex min-h-[6rem] min-w-[24rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
    <Collapse type="check">
      <Title label="title">Click me to show/hide content</Title>
      <Content>
        <p>tabindex="0" attribute is necessary to make the div focusable</p>
      </Content>
    </Collapse>
    </div>
    """
  end

end