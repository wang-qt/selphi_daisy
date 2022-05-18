defmodule SelphiDaisy.Form.TelephoneInput.Example01 do
  @moduledoc """
  PasswordInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.TelephoneInput,
      height: "500px",
      title: "TelephoneInput 组件 color，disabled，readonly，placeholder，maxlength，minlength pattern"

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

      <TelephoneInput  field={:tel} placeholder="请输入手机号" is_addon />
      <TelephoneInput  field={:tel1} placeholder="请输入手机号" bordered />
      <TelephoneInput  field={:tel2} placeholder="请输入手机号" bordered
                     color="primary" />
      <TelephoneInput  field={:tel3} placeholder="请输入手机号" bordered
                     color="primary" disabled />
      <TelephoneInput  field={:tel4} placeholder="请输入手机号" bordered
                     color="secondary" readonly  value="18909205141" />

      <TelephoneInput  field={:tel5} placeholder="请输入手机号" bordered
                     color="accent"  maxlength=11  minlength=11
                     pattern="[0-9]{11}" />


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