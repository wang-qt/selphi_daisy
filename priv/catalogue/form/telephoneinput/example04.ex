defmodule SelphiDaisy.Form.TelephoneInput.Example04 do
  @moduledoc """
   TelephoneInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.TelephoneInput,
      height: "500px",
      title: "TelephoneInput 组件  label 和 help_text  "

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
                    color="primary"  icon_left="phone"
                    maxlength=11  minlength=11
                    opts={phx_debounce: "blur" }
                    label="手机号"  help_text="手机号11位" />




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