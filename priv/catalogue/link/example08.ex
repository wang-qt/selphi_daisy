defmodule SelphiDaisy.Link.Example08 do
  @moduledoc """
  Surface.Components.Link.Button 的使用方法。
  Button用了提交form表单，和 <a>类似，包含 to 属性
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Link,
      height: "150px",
      title: "live_patch 类型"

  alias Surface.Components.Link.Button

  def render(assigns) do
    ~F"""
    <div class="flex flex-wrap items-center justify-center gap-2 ">
    <Button
      label="Delete user"
      to="/users/1"
      class="btn btn-primary btn-outline "
      method={:delete}
      values={id: 1, name: "wang", sex: "male", active: false, age: 33 }
      opts={data: [confirm: "Really?"]}
    /> <br>

    </div>
    """
  end
end
