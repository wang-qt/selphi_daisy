defmodule SelphiDaisy.Indicator.Example06 do
  @moduledoc """
  Indicator 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Indicator,
      height: "200px",
      title: "for input",
      direction: "vertical"

  alias SelphiDaisy.Avatar

  def render(assigns) do
    ~F"""
     {!-- 父组件添加 indicator 类 --}
    <div class="flex items-center justify-center gap-4">
      <div class="indicator">
        <Indicator>Required</Indicator>
        <input type="text" placeholder="Your email address" class="input input-bordered">
      </div>
    </div>
    """
  end

end