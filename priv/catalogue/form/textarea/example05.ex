defmodule SelphiDaisy.Form.TextArea.Example05 do
  @moduledoc """
  TextArea 颜色示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.TextArea,
      height: "500px",
      title: "TextArea 组件 label 和 help "

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


      <TextArea   field={:textarea} placeholder="Type here"
                  bordered  color="primary"  rows="1"
                  label="简介"
                  help_text="20-50个汉字或字母"/>

      <TextArea   field={:textarea} placeholder="Type here"
                  bordered  color="primary"  rows="4"
                  label="简介"
                  help_text="20-50个汉字或字母"/>


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