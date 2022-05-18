defmodule SelphiDaisy.Indicator.Example10  do
  @moduledoc """
  Indicator 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Indicator,
      height: "300px",
      title: " indicator-top (default) indicator-center",
      direction: "vertical"


  def render(assigns) do
    ~F"""
     {!-- 父组件添加 indicator 类 --}
    <div class="flex items-center justify-center gap-4">
      <div class="indicator">
        <Indicator h_pos="center" color="warning" > </Indicator>
        <div class="grid w-32 h-32 bg-base-300 place-items-center">content</div>
      </div>
    </div>
    """
  end

end