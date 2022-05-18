defmodule SelphiDaisy.Indicator.Example08 do
  @moduledoc """
  Indicator 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Indicator,
      height: "300px",
      title: " in center of an image",
      direction: "vertical"


  def render(assigns) do
    ~F"""
     {!-- 父组件添加 indicator 类 --}
    <div class="flex items-center justify-center gap-4">
      <div class="indicator">
        <Indicator h_pos="center" v_pos="middle" color="secondary" >uploading image ... </Indicator>
        <img src="https://api.lorem.space/image/house?w=300&h=150">
      </div>
    </div>
    """
  end

end