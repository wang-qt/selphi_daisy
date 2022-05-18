defmodule SelphiDaisy.Feather.Example02 do
  @moduledoc """
  Feather svg icon 线宽 stroke_width="2" .
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Feather,
      height: "600px",
      title: "02-feather icon"

  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-5 gap-4 ">
      <div>
        <Button class="btn  btn-outline"><Feather name="align-center" stroke_width="2" /></Button>
        <p>align-center</p>
      </div>
      <div>
        <Button class="btn  btn-primary btn-outline"><Feather name="align-justify" stroke_width="2" /></Button>
        <p>align-justify</p>
      </div>
      <div>
        <Button class="btn  btn-secondary btn-outline"><Feather name="align-left" stroke_width="2" /></Button>
        <p>align-left</p>
      </div>
      <div>
        <Button class="btn  btn-accent btn-outline"><Feather name="align-right" stroke_width="2" /></Button>
        <p>align-right</p>
      </div>
      <div>
        <Button class="btn  btn-neutral btn-outline"><Feather name="anchor" stroke_width="2" /></Button>
        <p>anchor</p>
      </div>

    </div>
    """

  end

end