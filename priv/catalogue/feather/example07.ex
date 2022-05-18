defmodule SelphiDaisy.Feather.Example07 do
  @moduledoc """
  Feather svg icon 改变图标颜色,添加 class="text-purple-600" .
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Feather,
      height: "600px",
      title: "07-feather icon"

  alias SelphiDaisy.Button

  def render(assigns) do
    ~F"""
    <div class="grid grid-cols-5 gap-4 ">
      <div>
        <Button class="btn btn-lg  btn-square btn-outline"><Feather name="bell-off" size="12" stroke_width="2" class="text-purple-600" /></Button>
        <p>bell-off</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-primary btn-square btn-outline"><Feather name="bell" size="12" stroke_width="2" class="text-purple-600" /></Button>
        <p>bell</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-secondary btn-square btn-outline"><Feather name="bluetooth" size="12" stroke_width="2" class="text-purple-600"  /></Button>
        <p>bluetooth</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-accent btn-square btn-outline"><Feather name="bold" size="12" stroke_width="2" class="text-purple-600" /></Button>
        <p>bold</p>
      </div>
      <div>
        <Button class="btn btn-lg btn-neutral btn-square btn-outline"><Feather name="book-open" size="12" stroke_width="2" class="text-purple-600" /></Button>
        <p>book-open</p>
      </div>

    </div>
    """

  end

end