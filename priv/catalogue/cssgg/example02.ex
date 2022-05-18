defmodule SelphiDaisy.Cssgg.Example02 do
  @moduledoc """
  css-gg svg icon 大小 size="2" .
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Cssgg,
      height: "600px",
      title: "02-feather icon"

  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-5 gap-4 ">
      <div>
        <Button class="btn btn-xs btn-outline"><Cssgg name="alarm"  size="4" /></Button>
        <p>alarm</p>
      </div>
      <div>
        <Button class="btn btn-xs btn-outline"><Cssgg name="album"  size="4" /></Button>
        <p>album</p>
      </div>
      <div>
        <Button class="btn btn-xs btn-secondary btn-outline"><Cssgg name="align-bottom"  size="4" /></Button>
        <p>align-bottom</p>
      </div>
      <div>
        <Button class="btn btn-xs btn-accent btn-outline"><Cssgg name="align-center"  size="4" /></Button>
        <p>align-center</p>
      </div>
      <div>
        <Button class="btn btn-xs  btn-neutral btn-outline"><Cssgg name="align-left"  size="4" /></Button>
        <p>align-left</p>
      </div>

    </div>
    """

  end

end