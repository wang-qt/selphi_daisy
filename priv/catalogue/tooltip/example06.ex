defmodule SelphiDaisy.Tooltip.Example06 do
  @moduledoc """
  Tooltip 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Tooltip,
      height: "200px",
      title: " Primary color ",
      direction: "vertical"

  alias  SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem]  flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Tooltip  content="hello world!">
        <Button class="btn-primary">Hover me</Button>
      </Tooltip>
     <Tooltip  content="hello world!" color="primary">
        <Button class="btn-primary">Hover me</Button>
      </Tooltip>
      <Tooltip  content="hello world!"  color="secondary">
        <Button class="btn-primary">Hover me</Button>
      </Tooltip>
      <Tooltip  content="hello world!" color="accent">
        <Button class="btn-primary">Hover me</Button>
      </Tooltip>
      <Tooltip  content="hello world!"  color="info">
        <Button class="btn-primary">Hover me</Button>
      </Tooltip>
      <Tooltip  content="hello world!" color="warning">
        <Button class="btn-primary">Hover me</Button>
      </Tooltip>
      <Tooltip  content="hello world!"  color="success">
        <Button class="btn-primary">Hover me</Button>
      </Tooltip>
      <Tooltip  content="hello world!"  color="error">
        <Button class="btn-primary">Hover me</Button>
      </Tooltip>

    </div>
    """
  end

end