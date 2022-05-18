defmodule SelphiDaisy.Feather.Example05 do
  @moduledoc """
  Feather svg icon 改变 图标大小 size="12" 48px .
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Feather,
      height: "600px",
      title: "05-feather icon"


  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-5 gap-4 ">
      <div>
        <Button class="btn btn-lg  btn-square btn-outline"><Feather name="arrow-up-circle" size="12" /></Button>
        <p>arrow-up-circle</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-primary btn-square btn-outline"><Feather name="arrow-up-left" size="12" /></Button>
        <p>arrow-up-left</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-secondary btn-square btn-outline"><Feather name="arrow-up-right" size="12"  /></Button>
        <p>arrow-up-right</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-accent btn-square btn-outline"><Feather name="arrow-up" size="12" /></Button>
        <p>arrow-up</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-neutral btn-square btn-outline"><Feather name="at-sign" size="12" /></Button>
        <p>at-sign</p>
      </div>

    </div>
    """

  end

end