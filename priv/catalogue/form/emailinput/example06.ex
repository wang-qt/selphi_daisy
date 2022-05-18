defmodule SelphiDaisy.Form.EmailInput.Example06 do
  @moduledoc """
  EmailInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.EmailInput,
      height: "400px",
      title: "EmailInput 组件 位于水平组件中 HGroup，忽略label ",
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


      <HGroup caption="邮箱"  >
        <EmailInput   field={:email} placeholder="Type email"
                  bordered   color="primary"
                  icon_left="mail"
                  label="邮箱"
                  help_text="邮箱不能为空"/>
      </HGroup>

      <HGroup caption="邮箱"  >
        <EmailInput   field={:email1} placeholder="Type email"
                  bordered   color="primary"
                  icon_left="mail"
                  label="邮箱"
                  help_text="个人邮箱不能为空"/>
        <EmailInput   field={:email2} placeholder="Type email"
                  bordered   color="accent"
                  icon_left="mail"
                  label="邮箱"
                  help_text="公司邮箱不能为空"/>

      </HGroup>

      <HGroup caption="邮箱" size="xs" >
        <EmailInput   field={:email3} placeholder="Type email"
                  bordered   color="primary"
                  icon_left="mail"
                  label="邮箱"
                  help_text="个人邮箱不能为空"/>
        <EmailInput   field={:email4} placeholder="Type email"
                  bordered   color="accent"
                  icon_left="mail"
                  label="邮箱"
                  help_text="公司邮箱不能为空"/>

      </HGroup>


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