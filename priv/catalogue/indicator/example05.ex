defmodule SelphiDaisy.Indicator.Example05 do
  @moduledoc """
  Indicator 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Indicator,
      height: "200px",
      title: "for avatar",
      direction: "vertical"

  alias SelphiDaisy.Avatar

  def render(assigns) do
    ~F"""
     {!-- 父组件添加 indicator 类 --}
    <div class="flex items-center justify-center gap-4">
    {!-- Avatar使用自定义 indicator，不能设置 mask 和 indicator属性，只能使用round 属性 --}
    <Avatar size="32" round="rounded-full" class="indicator">
      <Indicator color="secondary">typing...</Indicator>
      <img src="https://api.lorem.space/image/face?hash=92048">
    </Avatar>
    <Avatar size="32"  class="indicator">
      <Indicator color="secondary">busy...</Indicator>
      <img src="https://api.lorem.space/image/face?hash=92048">
    </Avatar>

    </div>
    """
  end

end