defmodule SelphiDaisy.Form.Select.Example01 do
  @moduledoc """
  select  。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.Select,
      height: "700px",
      title: "select 组件 is_addon  bordered  disabled  color  options  multiple"

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

      {!-- is_addon 无边框 --}
      <Select  field={:select}  is_addon
            options={[
            "Select dropdown",
            "with options"
            ]}/>

      <Select  field={:select1}  bordered
          options={[ "Select dropdown", "with options" ]}/>

      <Select  field={:select2}  bordered color="primary"
          options={[ "Select dropdown", "with options" ]}/>

      <Select  field={:select2}  bordered disabled color="primary"
          options={[ "Select dropdown", "with options" ]}/>

      <Select  field={:select3}  bordered color="secondary"
          options={[ "Select dropdown", "with options" ]}/>

      <Select  field={:select4}  bordered color="accent"
          options={[ "Select dropdown", "with options" ]}/>
      {!-- multiple --}
      <Select  multiple field={:select5}  bordered color="accent"
          options={[ "作品1", "作品2", "作品3", "作品4", "作品5", "作品6", "作品7"]}/>



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