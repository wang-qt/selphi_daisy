defmodule SelphiDaisy.Feather.Example01 do
  @moduledoc """
  Feather svg icon 基本使用方式.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Feather,
      height: "600px",
      title: "01-feather icon"

  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-5 gap-4 ">
      <div>
        <Button class="btn btn-outline"><Feather name="activity" /></Button>
        <p>activity</p>
      </div>
      <div>
        <Button class="btn btn-primary btn-outline"><Feather name="airplay"  /></Button>
        <p>airplay</p>
      </div>
      <div>
        <Button class="btn btn-secondary  btn-outline"><Feather name="alert-circle"  /></Button>
        <p>alert-circle</p>
      </div>
      <div>
        <Button class="btn btn-accent btn-outline"><Feather name="alert-octagon"  /></Button>
        <p>alert-octagon</p>
      </div>
      <div>
        <Button class="btn btn-neutral btn-outline"><Feather name="alert-triangle"  /></Button>
        <p>alert-triangle</p>
      </div>
    </div>
    """

  end

end