defmodule SelphiDaisy.Collapse.Example07 do
  @moduledoc """
  Collapse 始终关闭 force="close"。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Collapse,
      height: "200px",
      title: "Force close",
      direction: "vertical"

  alias   SelphiDaisy.Collapse.{Title,Content}

  def render(assigns) do
    ~F"""
    <div class=" flex min-h-[6rem] min-w-[24rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
    <Collapse force="close" icon="plus" class="border border-base-300 bg-base-100 rounded-box">
      <Title label="title">I have collapse-close class</Title>
      <Content>
        <p>tabindex="0" attribute is necessary to make the div focusable</p>
      </Content>
    </Collapse>
    </div>
    """
  end

end