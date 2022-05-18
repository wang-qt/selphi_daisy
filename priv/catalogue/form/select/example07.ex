defmodule SelphiDaisy.Form.Select.Example07 do
  @moduledoc """
  select  。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.Select,
      height: "750px",
      title: "select 组件   label 和 help_text "

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


      <Select  field={:select}  bordered color="primary" icon_left="mail"
          control_class="w-40"
          label="类型"
          help_text="类型不能为空"
          options={[ "Select dropdown", "with options" ]}/>

      <Select  field={:select1}  bordered size="xs" color="secondary" icon_left="mail"
          control_class="w-48"
          label="类型"
          help_text="类型不能为空"
          options={[ "Select dropdown", "with options" ]}/>

      <Select  field={:select2}  bordered size="sm" color="accent" icon_left="mail"
          control_class="w-52"
          label="类型"
          help_text="类型不能为空"
          options={[ "Select dropdown", "with options" ]}/>

      <Select  field={:select3}  bordered size="md" color="info" icon_left="mail"
          control_class="w-60"
          label="类型"
          help_text="类型不能为空"
          options={[ "Select dropdown", "with options" ]}/>

      <Select  field={:select4}  bordered size="lg" color="success" icon_left="mail"
          control_class="w-72"
          label="类型"
          help_text="类型不能为空"
          options={[ "Select dropdown", "with options" ]}/>

      <Select  field={:select4}  bordered size="lg" color="success" icon_left="mail"
          control_class="w-80"  class="rounded-full"
          label="类型"
          help_text="类型不能为空"
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