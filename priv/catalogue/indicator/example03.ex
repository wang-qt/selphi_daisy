defmodule SelphiDaisy.Indicator.Example03 do
  @moduledoc """
  Indicator 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Indicator,
      height: "200px",
      title: "for button",
      direction: "vertical"


  def render(assigns) do
    ~F"""
     {!-- 父组件添加 indicator 类 --}
    <div class="flex items-center justify-center ">
    <div class="indicator">
      <Indicator color="secondary">99+</Indicator>
      <button class="btn">inbox</button>
    </div>
    </div>
    """
  end

end