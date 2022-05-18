defmodule SelphiDaisy.Indicator.Example02 do
  @moduledoc """
  Indicator 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Indicator,
      height: "200px",
      title: "badge as indicator",
      direction: "vertical"


  def render(assigns) do
    ~F"""
     {!-- 父组件添加 indicator 类 --}
    <div class="flex items-center justify-center ">
    <div class="indicator">
      <Indicator color="primary">new</Indicator>
      <div class="grid w-32 h-32 bg-base-300 place-items-center">content</div>
    </div>
    </div>
    """
  end

end