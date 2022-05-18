defmodule SelphiDaisy.Heroicons.Example02 do
  @moduledoc """
  Heroicons svg icon 基本使用方式 solid 图标.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Heroicons,
      height: "150px",
      title: "02-heroicons ",
      direction: "vertical"


  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-7 gap-4 ">
      <div>
        <Button class="btn btn-outline"><Heroicons name="academic-cap" type="fill" /></Button>
        <p>academic-cap</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="adjustments"  type="fill" /></Button>
        <p>adjustments</p>
      </div>
      <div>
        <Button class="btn   btn-outline"><Heroicons name="annotation"  type="fill" /></Button>
        <p>annotation</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons name="archive"  type="fill" /></Button>
        <p>archive</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-circle-down" type="fill" /></Button>
        <p>arrow-circle-down</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-circle-left" type="fill" /></Button>
        <p>arrow-circle-left</p>
      </div>
      <div>
        <Button class="btn  btn-outline"><Heroicons  name="arrow-circle-right" type="fill" /></Button>
        <p>arrow-circle-right</p>
      </div>
    </div>
    """

  end

end