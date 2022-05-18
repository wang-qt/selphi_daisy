defmodule SelphiDaisy.Form.PasswordSwap.Example03 do
  @moduledoc """
  PasswordSwap  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.PasswordSwap,
      height: "500px",
      title: "PasswordSwap 组件 color，disabled，readonly，placeholder，maxlength，minlength "

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

      <PasswordSwap id="pw" field={:password} placeholder="请输入密码" is_addon />
      <PasswordSwap id="pw-1" field={:password1} placeholder="请输入密码" bordered />
      <PasswordSwap  id="pw-2" field={:password2} placeholder="请输入密码" bordered
                     color="primary" />
      <PasswordSwap id="pw-3" field={:password3} placeholder="请输入密码" bordered
                     color="primary" disabled />
      <PasswordSwap id="pw-4" field={:password4} placeholder="请输入密码" bordered
                     color="secondary" readonly  value="123456" />

     <PasswordSwap id="pw-5" field={:password5} placeholder="请输入密码" bordered
                     color="accent"  maxlength=10  minlength=5  value="1234567"/>

    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" =>  changes } , socket) do
    IO.puts "收到 PasswordSwap change 事件！"
    IO.inspect changes

    %{"password" => password_value} = changes


    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket,  changeset: cs  )
    {:noreply, socket}
  end

  def handle_event("submit", %{"sample_model" =>  changes } , socket) do
    IO.puts "收到 PasswordSwap submit 事件！"
    IO.inspect changes


    {:noreply, socket}
  end




end