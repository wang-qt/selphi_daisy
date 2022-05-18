defmodule SelphiDaisy.Indicator.Example04 do
  @moduledoc """
  Indicator 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Indicator,
      height: "200px",
      title: "for tab",
      direction: "vertical"


  def render(assigns) do
    ~F"""
     {!-- 父组件添加 indicator 类 --}
    <div class="flex items-center justify-center ">
    <div class="tabs">
      <a class="tab tab-lifted">Messages</a>
      <a class="indicator tab tab-lifted tab-active">
        Notifications
        <Indicator class="z-10">8</Indicator>
      </a>
      <a class="tab tab-lifted">Requests</a>
    </div>
    </div>
    """
  end

end