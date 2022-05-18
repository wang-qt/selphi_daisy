defmodule SelphiDaisy.Button.Example02 do
  @moduledoc """
  使用`btn-active`.  <Button active />
  @color_values ~w(neutral primary  secondary accent info success warning error ghost link )
  opts={tabindex: "-1", role: "button", aria_disabled: "true"}, 生成 button 属性，属性名为key。
  opts 里的keyword，key 不能为`中划线`，必须改为`下划线`
  生成的html，自动把`下划线`转为`中划线`
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Button,
      height: "150px",
      title: "active state button",
      direction: "vertical"



  def render(assigns) do
    ~F"""
    <div>
    <Button active  opts={tabindex: "-1", role: "button", aria_disabled: "true"}>neutral</Button>
    <Button active color="primary" opts={tabindex: "-1", role: "button", aria_disabled: "true"}>primary</Button>
    <Button color="primary" opts={tabindex: "-1", role: "button", aria_disabled: "true"}>primary</Button>
    <Button active color="secondary" opts={tabindex: "-1", role: "button", aria_disabled: "true"}>secondary</Button>
    <Button active color="accent" opts={tabindex: "-1", role: "button", aria_disabled: "true"}>accent</Button>
    <Button color="accent" opts={tabindex: "-1", role: "button", aria_disabled: "true"}>accent</Button>
    <Button active color="link" opts={tabindex: "-1", role: "button", aria_disabled: "true"}>link</Button>
    </div>
    """
  end
end
