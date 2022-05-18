defmodule SelphiDaisy.Form.TextInput.Example02 do
  @moduledoc """
  chekbox 大小示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.TextInput,
      height: "400px",
      title: "TextInput组件 size"

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

      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="primary" />
      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="secondary" size="xs" />
      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="accent" size="sm" />

      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="info" size="md" />
      <TextInput  field={:textinput} placeholder="Type here"
              bordered   color="success" size="lg" />


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