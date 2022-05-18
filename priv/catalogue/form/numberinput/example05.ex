defmodule SelphiDaisy.Form.NumberInput.Example05 do
  @moduledoc """
  NumberInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.NumberInput,
      height: "500px",
      title: "NumberInput 组件 位于水平组件中 HGroup，忽略label ",
      direction: "vertical"

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias SelphiDaisy.Form.HGroup

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

     <HGroup caption="整数变量"  >
        <NumberInput  field={:number}  bordered  color="primary" max=15 min=0
                    icon_left="variable"
                    label="变量"
                    help_text="变量范围0-15" />
     </HGroup>

     <HGroup caption="整数变量2"  >
        <NumberInput  field={:number1}  bordered  color="primary" max=15 min=0
                    icon_left="variable"
                    label="变量"
                    help_text="变量范围0-15" />
        <NumberInput  field={:number2}  bordered  color="secondary" max=15 min=0
                    icon_left="variable"
                    label="变量"
                    help_text="变量范围0-15" />
     </HGroup>
     <HGroup caption="整数变量2"  size="xs">
        <NumberInput  field={:number3}  bordered  color="primary" max=15 min=0
                    icon_left="variable"
                    label="变量"
                    help_text="变量范围0-15" />
        <NumberInput  field={:number4}  bordered  color="secondary" max=15 min=0
                    icon_left="variable"
                    label="变量"
                    help_text="变量范围0-15" />
     </HGroup>


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