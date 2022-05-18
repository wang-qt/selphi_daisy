defmodule SelphiDaisy.Form.RadioButton.Example01 do
  @moduledoc """
  RadioButton  。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.RadioButton,
      height: "400px",
      title: "RadioButton 组件 options 三种格式，以及如何 disabled, checked一个radio ",
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
      <RadioButton   field={:radio}   options={[{1, "yes"}, {2, "no"}]} />
      <RadioButton   field={:radio1}
          options={[
            [key: 1, value: "one", checked: true],
            [key: 2, value: "two"],
            [key: 3, value: "three"],
            [key: 4, value: "four", disabled: true]
          ]} />


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