defmodule SelphiDaisy.Form.EmailInput.Example01 do
  @moduledoc """
  EmailInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.EmailInput,
      height: "900px",
      title: "EmailInput 组件 color，disabled，readonly，placeholder，maxlength，minlength"

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

      <EmailInput  field={:email} placeholder="Type email" is_addon />



      <EmailInput   field={:email1} placeholder="Type email" bordered/>

      <EmailInput   field={:email2} placeholder="Type email"
                    bordered  color="primary" />

      <EmailInput   field={:email3} placeholder="Type email"
                    bordered  color="primary" disabled
                    value="sam@qq.com" />

      <EmailInput   field={:email4} placeholder="Type email"
                    bordered  color="secondary" readonly
                    value="sam@qq.com" />

      <EmailInput   field={:email5} placeholder="Type email"
                    bordered  color="info"  maxlength=10 />

      <EmailInput   field={:email6} placeholder="Type email"
                    bordered  color="success"  minlength=10 />

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