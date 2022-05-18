defmodule SelphiDaisy.Form.Toggle.Example01 do
  @moduledoc """

  HCtrlGroup 和内部组件，都需要设置 size！有点不方便，
  因为内部组件可以单独使用。
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.Toggle,
      height: "400px",
      title: "设置 Toggle 颜色和 disabled checked",
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

      <Toggle field={:toggle}>
         Remember me? <a href="#">terms and conditions</a>
      </Toggle>

      <Toggle field={:toggle1} color="primary">
         Remember me? <a href="#">terms and conditions</a>
      </Toggle>

      <Toggle field={:toggle2}  color="secondary">
         Remember me? <a href="#">terms and conditions</a>
      </Toggle>

      <Toggle field={:toggle3}  color="accent" >
         Remember me? <a href="#">terms and conditions</a>
      </Toggle>

      <Toggle field={:toggle4} disabled >
         Remember me? <a href="#">terms and conditions</a>
      </Toggle>

      <Toggle field={:toggle4} disabled checked>
         Remember me? <a href="#">terms and conditions</a>
      </Toggle>

      <Toggle field={:toggle4} checked >
         Remember me? <a href="#">terms and conditions</a>
      </Toggle>


    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 toggle change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end

end