defmodule SelphiDaisy.Collapse.Example01 do
  @moduledoc """
  默认`Collapse`样式. This collapse works with focus. When div loses focus, it gets closed.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Collapse,
      height: "200px",
      title: "Collapse with focus",
      direction: "vertical"

  alias   SelphiDaisy.Collapse.{Title,Content}

  def render(assigns) do
    ~F"""
    <div class=" flex min-h-[6rem] min-w-[24rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
    <Collapse>
      <Title label="title">Focus me to see content</Title>
      <Content>
        <p>tabindex="0" attribute is necessary to make the div focusable</p>
      </Content>
    </Collapse>
    </div>
    """
  end

end