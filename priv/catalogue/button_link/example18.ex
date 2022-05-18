defmodule SelphiDaisy.ButtonLink.Example18 do
  @moduledoc """
   Button 使用 type value values属性.
   ```
  <Button value="css" values={name: "wang", sex: "male", age: 28} click="user_info">value css</Button>
  生成 html
  <button phx-value-age="28" phx-value-name="wang" phx-value-sex="male" phx-click="user_info" value="css" class="btn">
    value css
  </button>
  ```
  liveview 事件处理函数
  ```
  def handle_event("user_info", params, socket) do
    IO.puts "get button click event!"
    IO.inspect params
    {:noreply, socket}
  end
  ```
  点击`value css`按钮
   ```
  shell 打印
  get button click event!
  %{"age" => "28", "name" => "wang", "sex" => "male", "value" => "css"}
  ```
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.ButtonLink,
      height: "200px",
      title: "type value values"



  # <div class="p-20 bg-cover card bg-base-200" style="background-image: url(https://picsum.photos/id/314/400/300);">
  def render(assigns) do
    ~F"""
    <ButtonLink type="button" >button</ButtonLink>
    <ButtonLink type="submit" >submit</ButtonLink>
    <ButtonLink type="reset" >submit</ButtonLink>
    <ButtonLink value="html" >value html</ButtonLink>
    <ButtonLink value="css" values={name: "wang", sex: "male", age: 28} click="user_info">value css</ButtonLink>
    """
  end

  def handle_event("user_info", params, socket) do
    IO.puts "get button click event!"
    IO.inspect params
    {:noreply, socket}
  end


end
