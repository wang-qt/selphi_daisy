defmodule SelphiDaisy.Form.NumberInput.Example01 do
  @moduledoc """
  NumberInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.NumberInput,
      height: "500px",
      title: "NumberInput 组件 color，disabled，readonly，min max step"

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

      <NumberInput  field={:number}  is_addon />

      <NumberInput  field={:number1}  bordered />
      <NumberInput  field={:number2}  bordered  color="primary"/>
      <NumberInput  field={:number3}  bordered  color="primary"
                    value=10 disabled />
      <NumberInput  field={:number3}  bordered  color="primary"
                    value=10 readonly />
      <NumberInput  field={:number4}  bordered  color="secondary"
                    value=10 max=15 min=0 />
      <NumberInput  field={:number5}  bordered  color="accent"
                    value=10 max=15 min=0 step=5  maxlength="8" />



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