defmodule SelphiDaisy.Heroicons.Example01 do
  @moduledoc """
  Heroicons svg icon 基本使用方式.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Heroicons,
      height: "150px",
      title: "01-heroicons ",
      direction: "vertical"


  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-7 gap-4 ">
      <div>
        <Button class="btn btn-outline"><Heroicons name="academic-cap" /></Button>
        <p>academic-cap</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="adjustments"  /></Button>
        <p>adjustments</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="annotation"  /></Button>
        <p>annotation</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="archive"  /></Button>
        <p>archive</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-circle-down" /></Button>
        <p>arrow-circle-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-circle-left" /></Button>
        <p>arrow-circle-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-circle-right" /></Button>
        <p>arrow-circle-right</p>
      </div>
    </div>
    """

  end

end