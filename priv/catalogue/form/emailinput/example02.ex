defmodule SelphiDaisy.Form.EmailInput.Example02 do
  @moduledoc """
  EmailInput  示例。
  pattern: 只有在输入符合格式时，才可以 submit！！change事件不受影响。
  minlength: 前端校验，字符数少于指定个数，无法提交！！
  title: 提示正确的输入格式，在鼠标 hover 或 submit出错时，显示。
  multiple: 输入`,` 分隔的多个email，每个都要满足pattern。

  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.EmailInput,
      height: "900px",
      title: "EmailInput 组件 title pattern multiple"

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!


  data changeset, :map,
       default:
         SampleModel.changeset(%SampleModel{}, %{
           "username" => "bulma",
           "email" => "hello@"
         })
         |> Map.put(:action, :insert)


  def render(assigns) do
    ~F"""
    <div class="border-base-300  border flex  min-h-[6rem] min-w-[18rem] max-w-4xl items-center justify-center m-4  ">
    <Form
      for={@changeset}
      change={"change"}
      submit={"submit"}
      opts={autocomplete: "off"}
      class="w-full">


      <EmailInput   field={:email1} placeholder="udm@udm.com"
                    bordered  color="success"
                    pattern=".+@udm.com"
                     title="请输入形如*@udm的邮箱地址"
                     minlength=20
                     multiple />


      <input type="submit" value="Submit" class="btn">
    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 EmailInput change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end

  def handle_event("submit", %{"sample_model" => changes}, socket) do
    IO.puts "收到 EmailInput submit 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end


end