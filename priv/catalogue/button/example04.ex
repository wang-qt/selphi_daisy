defmodule SelphiDaisy.Button.Example04 do
  @moduledoc """
  btn-disabled 禁用按钮. 使用方法 <Button  disabled />.
  opts 里的keyword，key 不能为`中划线`，必须改为`下划线`
  生成的html，自动把`下划线`转为`中划线`
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Button,
      height: "150px",
      title: "disabled button",
      direction: "vertical"



  # opts 里的keyword，key 不能为 中划线，必须改为 下划线
  # 生成的html，自动把 下划线 转为 中划线
  def render(assigns) do
    ~F"""
    <div>
    <Button disabled >neutral</Button>
    <Button disabled color="primary" >primary</Button>
    <Button disabled color="ghost">ghost</Button>
    <Button disabled color="link" disabled="true">link</Button>
    <Button disabled  opts={tabindex: "-1", role: "button", aria_disabled: "true"} >visually disabled</Button>
    </div>
    """
  end
end
