defmodule SelphiDaisy.Feather.Example08 do
  @moduledoc """
  Feather svg icon 改变图标颜色,添加 class="text-pink-800" .
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Feather,
      height: "600px",
      title: "08-feather icon"

  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-5 gap-4 ">
      <div>
        <Button class="btn btn-lg  btn-square"><Feather name="book" size="10" stroke_width="1"   /></Button>
        <p>book</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-primary btn-square "><Feather name="bookmark" size="10" stroke_width="1"   /></Button>
        <p>bookmark</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-secondary btn-square "><Feather name="box" size="10" stroke_width="1"    /></Button>
        <p>box</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-accent btn-square "><Feather name="briefcase" size="10" stroke_width="1"   /></Button>
        <p>briefcase</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-neutral btn-square "><Feather name="calendar" size="10" stroke_width="1"   /></Button>
        <p>calendar</p>
      </div>

    </div>
    """

  end

end