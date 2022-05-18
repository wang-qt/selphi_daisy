defmodule SelphiDaisy.Form.Checkbox.Example02 do
  @moduledoc """
  chekbox 颜色示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.Checkbox,
      height: "400px",
      title: "设置checkbox颜色和 disabled",
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

      <Checkbox field={:checkbox} color="primary">
         Remember me? <a href="#">terms and conditions</a>
      </Checkbox>

      <Checkbox field={:checkbox1}  color="secondary">
         Remember me? <a href="#">terms and conditions</a>
      </Checkbox>

      <Checkbox field={:checkbox1}  color="accent" >
         Remember me? <a href="#">terms and conditions</a>
      </Checkbox>

      <Checkbox field={:checkbox1} disabled >
         Remember me? <a href="#">terms and conditions</a>
      </Checkbox>


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