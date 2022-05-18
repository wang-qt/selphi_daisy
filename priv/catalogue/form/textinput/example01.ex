defmodule SelphiDaisy.Form.TextInput.Example01 do
  @moduledoc """
  chekbox 颜色示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.TextInput,
      height: "900px",
      title: "TextInput组件 color，disabled，readonly，placeholder，maxlength，minlength"

   alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias  SelphiDaisy.Form.Checkbox

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

      <Checkbox field={:checkbox}>
         Remember me? <a href="#">terms and conditions</a>
      </Checkbox>

      <TextInput  field={:textinput} placeholder="Type here" is_addon />


      <TextInput   field={:textinput} placeholder="Type here" bordered/>
      <TextInput   field={:textinput} placeholder="Type here"
              bordered   color="primary"/>
      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="secondary"/>
      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="accent"/>

      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="info"/>
      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="success"/>
      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="warning"/>
      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="error"/>

      <TextInput  field={:textinput} placeholder="Type here"
              bordered   disabled />
     <TextInput  field={:textinput} placeholder="Type here"
              bordered   readonly />

     <TextInput  field={:textinput} placeholder="Type here"
              bordered   maxlength=10 />
     <TextInput  field={:textinput} placeholder="Type here"
              bordered   minlength=3 />


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