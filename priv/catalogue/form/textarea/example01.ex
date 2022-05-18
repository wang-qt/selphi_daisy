defmodule SelphiDaisy.Form.TextArea.Example01 do
  @moduledoc """
  TextArea 颜色示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.TextArea,
      height: "1700px",
      title: "TextArea 组件 color，disabled，readonly，placeholder，maxlength，minlength"

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


      <TextArea  field={:textarea} placeholder="Type here" is_addon />
      <TextArea   field={:textarea} placeholder="Type here" bordered/>
      <TextArea   field={:textarea} placeholder="Type here" bordered  color="primary"/>
      <TextArea   field={:textarea} placeholder="Type here" bordered  color="secondary"/>
      <TextArea   field={:textarea} placeholder="Type here" bordered  color="accent"/>

      <TextArea   field={:textarea} placeholder="Type here" bordered  color="info"/>
      <TextArea   field={:textarea} placeholder="Type here" bordered  color="success"/>
      <TextArea   field={:textarea} placeholder="Type here" bordered  color="warning"/>
      <TextArea   field={:textarea} placeholder="Type here" bordered  color="error"/>

      <TextArea   field={:textarea1} placeholder="Type here" bordered  disabled />
      <TextArea   field={:textarea1} placeholder="Type here" bordered  readonly />

      <TextArea   field={:textarea1} placeholder="Type here" bordered  maxlength=30 />
      <TextArea   field={:textarea2} placeholder="Type here" bordered  minlength=20 />



    </Form>
    </div>


    """
  end


  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 textarea change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end
end