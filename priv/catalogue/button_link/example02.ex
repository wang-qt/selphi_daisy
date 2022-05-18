defmodule SelphiDaisy.ButtonLink.Example02 do
  @moduledoc """
  使用`btn-active`.  <ButtonLink active />
  @color_values ~w(neutral primary  secondary accent info success warning error ghost link )
  opts={tabindex: "-1", role: "button", aria_disabled: "true"}, 生成 button 属性，属性名为key。
  opts 里的keyword，key 不能为`中划线`，必须改为`下划线`
  生成的html，自动把`下划线`转为`中划线`
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "150px",
      title: "active state button",
      direction: "vertical"


  def render(assigns) do
    ~F"""
    <div>
    <ButtonLink active  opts={tabindex: "-1", role: "button", aria_disabled: "true"}>neutral</ButtonLink>
    <ButtonLink active color="primary" opts={tabindex: "-1", role: "button", aria_disabled: "true"}>primary</ButtonLink>
    <ButtonLink color="primary" opts={tabindex: "-1", role: "button", aria_disabled: "true"}>primary</ButtonLink>
    <ButtonLink active color="secondary" opts={tabindex: "-1", role: "button", aria_disabled: "true"}>secondary</ButtonLink>
    <ButtonLink active color="accent" opts={tabindex: "-1", role: "button", aria_disabled: "true"}>accent</ButtonLink>
    <ButtonLink color="accent" opts={tabindex: "-1", role: "button", aria_disabled: "true"}>accent</ButtonLink>
    <ButtonLink active color="link" opts={tabindex: "-1", role: "button", aria_disabled: "true"}>link</ButtonLink>
    </div>
    """
  end
end
