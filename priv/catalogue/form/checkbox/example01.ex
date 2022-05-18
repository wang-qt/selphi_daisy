defmodule SelphiDaisy.Form.Checkbox.Example01 do
  @moduledoc """

  HCtrlGroup 和内部组件，都需要设置 size！有点不方便，
  因为内部组件可以单独使用。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.Checkbox,
      height: "600px",
      title: "设置checkbox大小, HCtrlGroup 水平field ",
      direction: "vertical"

   alias SelphiDaisy.Form.SampleModel
   alias SelphiDaisy.Form.Checkbox

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
    <div class="border-base-300  border flex  min-h-[6rem] min-w-[18rem] max-w-4xl items-start justify-center m-4  ">
    <Form
      for={@changeset}
      change={"change"}
      submit={"submit"}
      opts={autocomplete: "off"}
      class="w-full">

      <HGroup caption="是否接受?">
        <Checkbox field={:checkbox}>
           Remember me? <a href="#">terms and conditions</a>
        </Checkbox>
      </HGroup>

      <HGroup caption="是否接受?" size="xs">
        <Checkbox field={:checkbox} size="xs">
           Remember me? <a href="#">terms and conditions</a>
        </Checkbox>
      </HGroup>

      <HGroup caption="是否接受?" size="sm">
        <Checkbox field={:checkbox1}  size="sm">
           Remember me? <a href="#">terms and conditions</a>
        </Checkbox>
      </HGroup>

      <HGroup caption="是否接受?" size="md">
        <Checkbox field={:checkbox1}  size="md" >
           Remember me? <a href="#">terms and conditions</a>
        </Checkbox>
      </HGroup>

      <HGroup caption="是否接受?" size="lg">
        <Checkbox field={:checkbox1} size="lg">
           Remember me? <a href="#">terms and conditions</a>
        </Checkbox>
      </HGroup>

      <HGroup >
        <Checkbox field={:checkbox1}  > 没有标题</Checkbox>
      </HGroup>

    </Form>
    </div>

<div class="border-base-300  border flex  min-h-[6rem] min-w-[18rem] max-w-4xl items-start justify-center m-4  ">
    <Form
      for={@changeset}
      change={"change"}
      submit={"submit"}
      opts={autocomplete: "off"}
      class="w-full">

      <Checkbox field={:checkbox}>
         Remember me? <a href="#">terms and conditions</a>
      </Checkbox>

      <Checkbox field={:checkbox} size="xs">
         Remember me? <a href="#">terms and conditions</a>
      </Checkbox>

      <Checkbox field={:checkbox1}  size="sm">
         Remember me? <a href="#">terms and conditions</a>
      </Checkbox>

      <Checkbox field={:checkbox1}  size="md" >
         Remember me? <a href="#">terms and conditions</a>
      </Checkbox>

      <Checkbox field={:checkbox1} size="lg">
         Remember me? <a href="#">terms and conditions</a>
      </Checkbox>

      <Checkbox field={:checkbox1}  > 没有标题</Checkbox>

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