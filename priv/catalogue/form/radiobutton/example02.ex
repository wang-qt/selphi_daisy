defmodule SelphiDaisy.Form.RadioButton.Example02 do
  @moduledoc """
  RadioButton  。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.RadioButton,
      height: "400px",
      title: "RadioButton 组件 color ",
      direction: "vertical"

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

      <RadioButton   field={:radio}   options={["yes", "no"]} />
      <RadioButton  color="primary" field={:radio1}   options={["yes", "no"]} />
      <RadioButton  color="secondary" field={:radio2}   options={["yes", "no"]} />
      <RadioButton  color="accent" field={:radio3}   options={["yes", "no"]} />

    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 radio change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end


end