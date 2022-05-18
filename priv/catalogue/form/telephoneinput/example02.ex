defmodule SelphiDaisy.Form.TelephoneInput.Example02 do
  @moduledoc """
  TelephoneInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.TelephoneInput,
      height: "500px",
      title: "TelephoneInput 组件 size"

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

      <TelephoneInput  field={:tel} placeholder="请输入手机号" bordered
                     color="primary" />
      <TelephoneInput  field={:tel1} placeholder="请输入手机号" bordered
                     color="secondary"  icon_left="phone"  size="xs" />
      <TelephoneInput  field={:tel2} placeholder="请输入手机号" bordered
                     color="accent"  icon_left="phone"  size="sm" />

      <TelephoneInput  field={:tel3} placeholder="请输入手机号" bordered
                     color="info"  icon_left="phone"  size="md" />

      <TelephoneInput  field={:tel4} placeholder="请输入手机号" bordered
                     color="success"  icon_left="phone"  size="lg" />




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