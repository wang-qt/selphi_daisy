defmodule SelphiDaisy.Feather.Example03 do
  @moduledoc """
  Feather svg icon 改变 图标大小 size="5" 20px .
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Feather,
      height: "600px",
      title: "03-feather icon"


  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-5 gap-4 ">
      <div>
        <Button class="btn btn-sm  btn-outline"><Feather name="aperture" size="5" /></Button>
        <p>aperture</p>
      </div>
      <div>
        <Button class="btn btn-sm btn-primary btn-outline"><Feather name="archive" size="5" /></Button>
        <p>archive</p>
      </div>
      <div>
        <Button class="btn btn-sm btn-secondary btn-outline"><Feather name="arrow-down-circle" size="5"  /></Button>
        <p>arrow-down-circle</p>
      </div>
      <div>
        <Button class="btn btn-sm btn-accent btn-outline"><Feather name="arrow-down-left" size="5" /></Button>
        <p>arrow-down-left</p>
      </div>
      <div>
        <Button class="btn btn-sm btn-neutral btn-outline"><Feather name="arrow-down-right" size="5" /></Button>
        <p>arrow-down-right</p>
      </div>

    </div>
    """

  end

end