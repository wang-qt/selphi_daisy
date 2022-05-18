defmodule SelphiDaisy.Form.PasswordInput.Example05  do
  @moduledoc """
  PasswordInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.PasswordInput,
      height: "500px",
      title: "PasswordInput 组件  位于水平组件中 HGroup，忽略label ",
      direction: "vertical"

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias SelphiDaisy.Form.HGroup

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

      <HGroup caption="密码*"  >
        <PasswordInput  field={:password} placeholder="请输入密码" bordered
                     color="primary"  icon_left="key"
                     label="密码"  help_text="密码最少6位"   minlength=6 />
      </HGroup>

      <HGroup caption="确认密码*"  >
        <PasswordInput  field={:password1} placeholder="请输入密码" bordered
                     color="primary"  icon_left="key"
                     label="密码"  help_text="密码最少6位"   minlength=6 />
        <PasswordInput  field={:password2} placeholder="请输入密码" bordered
                     color="secondary"  icon_left="key"
                     label="确认密码"  help_text="确认密码最少6位"   minlength=6 />
      </HGroup>

      <HGroup caption="确认密码*"  size="xs">
        <PasswordInput  field={:password3} placeholder="请输入密码" bordered
                     color="primary"  icon_left="key"
                     label="密码"  help_text="密码最少6位"   minlength=6 />
        <PasswordInput  field={:password4} placeholder="请输入密码" bordered
                     color="secondary"  icon_left="key"
                     label="确认密码"  help_text="确认密码最少6位"   minlength=6 />
      </HGroup>


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