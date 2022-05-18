defmodule SelphiDaisy.Feather.Example04 do
  @moduledoc """
  Feather svg icon 改变 图标大小 size="4" 16px .
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Feather,
      height: "600px",
      title: "04-feather icon"

  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-5 gap-4 ">
      <div>
        <Button class="btn btn-xs  btn-square btn-outline"><Feather name="arrow-down" size="4" /></Button>
        <p>arrow-down</p>
      </div>
      <div>
        <Button class="btn btn-xs btn-primary btn-square btn-outline"><Feather name="arrow-left-circle" size="4" /></Button>
        <p>arrow-left-circl</p>
      </div>
      <div>
        <Button class="btn btn-xs btn-secondary btn-square btn-outline"><Feather name="arrow-left" size="4"  /></Button>
        <p>arrow-left</p>
      </div>
      <div>
        <Button class="btn btn-xs btn-accent btn-square btn-outline"><Feather name="arrow-right-circle" size="4" /></Button>
        <p>arrow-right-circle</p>
      </div>
      <div>
        <Button class="btn btn-xs btn-neutral btn-square btn-outline"><Feather name="arrow-right" size="4" /></Button>
        <p>arrow-right</p>
      </div>

    </div>
    """

  end

end