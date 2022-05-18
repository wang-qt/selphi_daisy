defmodule SelphiDaisy.Feather.Example06 do
  @moduledoc """
  Feather svg icon 改变 图标大小 size="12" 48px .
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Feather,
      height: "600px",
      title: "06-feather icon"

  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-5 gap-4 ">
      <div>
        <Button class="btn btn-lg  btn-square btn-outline"><Feather name="award" size="12" stroke_width="2" /></Button>
        <p>award</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-primary btn-square btn-outline"><Feather name="bar-chart-2" size="12" stroke_width="2" /></Button>
        <p>bar-chart-2</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-secondary btn-square btn-outline"><Feather name="bar-chart" size="12" stroke_width="2"  /></Button>
        <p>bar-chart</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-accent btn-square btn-outline"><Feather name="battery-charging" size="12" stroke_width="2" /></Button>
        <p>battery-charging</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-neutral btn-square btn-outline"><Feather name="battery" size="12" stroke_width="2" /></Button>
        <p>battery</p>
      </div>

    </div>
    """

  end

end