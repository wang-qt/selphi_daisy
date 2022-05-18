defmodule SelphiDaisy.Form.Select.Example02 do
  @moduledoc """
  select  。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.Select,
      height: "500px",
      title: "select 组件 state color"

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


      <Select  field={:select}   color="ghost"
          options={[ "Select dropdown", "with options" ]}/>

      <Select  field={:select1}  bordered color="info"
          options={[ "Select dropdown", "with options" ]}/>

      <Select  field={:select2}  bordered color="success"
          options={[ "Select dropdown", "with options" ]}/>

      <Select  field={:select3}  bordered color="warning"
          options={[ "Select dropdown", "with options" ]}/>

      <Select  field={:select4}  bordered color="error"
          options={[ "Select dropdown", "with options" ]}/>



    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 select change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end

end