defmodule SelphiDaisy.Form.PasswordInput.Example03  do
  @moduledoc """
  PasswordInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.PasswordInput,
      height: "500px",
      title: "PasswordInput 组件  loading  class control_class 改变输入框大小 "

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

      <PasswordInput  field={:password} placeholder="请输入密码" bordered
                     color="primary"  icon_left="key"  loading />

      <PasswordInput  field={:password1} placeholder="请输入密码" bordered
                      color="secondary"  icon_left="key"
                      control_class="w-40" />

      <PasswordInput  field={:password2} placeholder="请输入密码" bordered
                     color="accent"  icon_left="key"
                     control_class="w-40"  class="rounded-full"/>

     <PasswordInput  field={:password3} placeholder="请输入密码" bordered
                     color="info"  icon_left="key"  icon_right="chat-alt" />

     <PasswordInput  field={:password4} placeholder="请输入密码" bordered
                     color="success"  icon_left="key"  icon_right="chat-alt"  loading />


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




end