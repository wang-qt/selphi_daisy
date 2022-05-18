defmodule SelphiDaisy.Form.NumberInput.Example03 do
  @moduledoc """
  NumberInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.NumberInput,
      height: "500px",
      title: "NumberInput 组件 loading  class control_class 改变输入框大小 "

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


      <NumberInput  field={:number}  bordered  color="primary" max=15 min=0
                    icon_left="variable"  loading />

      <NumberInput  field={:number1}  bordered  color="secondary" max=15 min=0
                    icon_left="truck" control_class="w-40"  />

      <NumberInput  field={:number2}  bordered  color="accent" max=15 min=0
                    icon_left="heart"  control_class="w-44"   class="rounded-full" />

      <NumberInput  field={:number3}  bordered  color="info" max=15 min=0
                    icon_left="folder-add"  control_class="w-72" />

      <NumberInput  field={:number4}  bordered  color="success" max=15 min=0
                     icon_left="currency-dollar"   icon_right="users" />

      <NumberInput  field={:number5}  bordered  color="warning" max=15 min=0
                    icon_left="currency-rupee"   />


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