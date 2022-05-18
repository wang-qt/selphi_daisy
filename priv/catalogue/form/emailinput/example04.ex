defmodule SelphiDaisy.Form.EmailInput.Example04 do
  @moduledoc """
  EmailInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.EmailInput,
      height: "900px",
      title: "EmailInput 组件 loading  class control_class 改变输入框大小 "

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


      <EmailInput   field={:email} placeholder="Type email"
                  bordered   color="primary"
                  icon_left="mail"  loading />



      <EmailInput   field={:email1} placeholder="Type email"
                  bordered   color="primary"
                  icon_left="mail"  control_class="w-40"    />

     <EmailInput   field={:email2} placeholder="Type email"
                  bordered   color="primary"
                  icon_left="mail"   control_class="w-40"  class="rounded-full"/>

     <EmailInput   field={:email3} placeholder="Type email"
                  bordered   color="primary"
                  icon_left="mail"  loading
                  control_class="w-72"   class="rounded-full" />

     <EmailInput   field={:email4} placeholder="Type email"
                  bordered   color="primary"
                  icon_left="mail"  icon_right="chat-alt"
                   size="lg" />



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