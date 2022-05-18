defmodule SelphiDaisy.Form.EmailInput.Example07 do
  @moduledoc """
  EmailInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.EmailInput,
      height: "400px",
      title: "EmailInput 组件 addon "

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias SelphiDaisy.Button
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


      <EmailInput   field={:email} placeholder="Type email"
                  bordered   color="primary"
                  icon_left="mail"
                  label="邮箱"
                  help_text="邮箱不能为空" >
         <LeftAddon>
             <Button outline color="primary" >primary </Button>
         </LeftAddon>
      </EmailInput>


      <EmailInput   field={:email1} placeholder="Type email"
                  bordered   color="primary"
                  icon_left="mail"
                  label="邮箱"
                  help_text="邮箱不能为空" >
         <RightAddon>
             <Button outline color="primary" >primary </Button>
         </RightAddon>
      </EmailInput>



    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到checkbox change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end


end