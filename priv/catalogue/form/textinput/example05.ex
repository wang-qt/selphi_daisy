defmodule SelphiDaisy.Form.TextInput.Example05 do
  @moduledoc """
  input-text control_class和class使用  。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.TextInput,
      height: "400px",
      title: "TextInput组件 通过 control_class 改变输入框大小"

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
    <div class="border-base-300  border flex  min-h-[6rem] min-w-[18rem] max-full items-center justify-center m-4  ">
    <Form
      for={@changeset}
      change={"change"}
      submit={"submit"}
      opts={autocomplete: "off"}
      class="w-full">

      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="primary"
              icon_left="mail" size="xs" loading
              control_class="w-40" class="rounded-full"/>

      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"  size="sm"  icon_right="check"
             control_class="w-48" />

      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"   size="md" loading
             control_class="w-60" />

      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"   size="lg"  loading
             control_class="w-72" />

      {!-- 通过class 给 input 设置 圆角 --}
      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"   size="lg"  loading
             class="rounded-full" />



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