defmodule SelphiDaisy.ButtonLink.Example04 do
  @moduledoc """
  btn-disabled 禁用按钮. 使用方法 <Button  disabled />.
  opts 里的keyword，key 不能为`中划线`，必须改为`下划线`
  生成的html，自动把`下划线`转为`中划线`
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "150px",
      title: "disabled button",
      direction: "vertical"


  # opts 里的keyword，key 不能为 中划线，必须改为 下划线
  # 生成的html，自动把 下划线 转为 中划线
  def render(assigns) do
    ~F"""
    <div>
    <ButtonLink disabled >neutral</ButtonLink>
    <ButtonLink disabled color="primary" >primary</ButtonLink>
    <ButtonLink disabled color="ghost">ghost</ButtonLink>
    <ButtonLink disabled color="link" disabled="true">link</ButtonLink>
    <ButtonLink disabled  opts={tabindex: "-1", role: "button", aria_disabled: "true"} >visually disabled</ButtonLink>
    </div>
    """
  end
end
