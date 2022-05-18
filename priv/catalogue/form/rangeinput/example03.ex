defmodule SelphiDaisy.Form.RangeInput.Example03 do
  @moduledoc """
  RangeInput  。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.RangeInput,
      height: "400px",
      title: "RangeInput 组件 size "

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

      <RangeInput   field={:range} min="0" max="10" value="7" label="Range" />
      <RangeInput   field={:range} min="0" max="10" value="7" label="Range"
               color="primary"  size="xs" />
      <RangeInput   field={:range1} min="0" max="10" value="8" label="Range"
               color="secondary" size="sm" />
      <RangeInput   field={:range2} min="0" max="10" value="6" label="Range"
              color="accent" size="md" />
      <RangeInput   field={:range3} min="0" max="100" value="25" step="25"
             color="primary" size="lg"  measure label="step measure"  />

    </Form>
    </div>


    """
  end
  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 range change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end

end