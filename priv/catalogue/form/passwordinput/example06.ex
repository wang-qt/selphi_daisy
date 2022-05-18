defmodule SelphiDaisy.Form.PasswordInput.Example06  do
  @moduledoc """
  PasswordInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.PasswordInput,
      height: "500px",
      title: "PasswordInput 组件 addon "

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias  SelphiDaisy.Button
  alias SelphiDaisy.Form.LeftAddon
  alias SelphiDaisy.Form.RightAddon

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
                     color="primary"  icon_left="key"
                     label="密码"  help_text="密码最少6位"   minlength=6  >

          <LeftAddon>
             <Button outline color="primary" >primary </Button>
         </LeftAddon>
      </PasswordInput>

      <PasswordInput  field={:password} placeholder="请输入密码" bordered
                     color="primary"  icon_left="key"
                     label="密码"  help_text="密码最少6位"   minlength=6  >

          <RightAddon>
             <Button outline color="primary" >primary </Button>
         </RightAddon>
      </PasswordInput>



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