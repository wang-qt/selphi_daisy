defmodule SelphiDaisy.Form.TelephoneInput.Example07 do
  @moduledoc """
   TelephoneInput  示例。
  2008年5月份开始, 在香港所有5,6,9 这三个数字开始的八位数字电话号码都是手机用的，
  例如:(+852)5234 5678 / (+852)6345 66789 / (+852)9123 4567

  只允许输入数字
  opts={title: "手机号为11位数字", oninput: "value=value.replace(/[^\\d]/g,'')" }
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.TelephoneInput,
      height: "700px",
      title: "TelephoneInput 组件 pattern opts={title , oninput } "

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias SelphiDaisy.Form.HGroup

  alias  SelphiDaisy.Button


  data changeset, :map,
       default:
         SampleModel.changeset(%SampleModel{}, %{
           "username" => "bulma",
           "email" => "hello@",
           "domain" => ""
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

      <TelephoneInput  field={:tel5} placeholder="请输入手机号" bordered
                     color="accent"  maxlength=11  minlength=11
                     pattern="[0-9]{11}"
                     icon_left="phone"
                     opts={title: "手机号为11位数字", oninput: "value=value.replace(/[^\\d]/g,'')" } />


      <Button outline color="primary" opts={phx_disable_with: "Saving..." }>提交</Button>

    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 PasswordInput change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end



  def handle_event("submit", %{"sample_model" => changes}, socket) do
    IO.puts "收到 PasswordInput submit 事件！"
    IO.inspect changes

    :timer.sleep(5000)

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end




end