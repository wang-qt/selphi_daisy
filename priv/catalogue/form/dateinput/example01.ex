defmodule SelphiDaisy.Form.DateInput.Example01 do
  @moduledoc """
  DateInput  控件。
  date 组件 min,max 为日期字符串，eg max="2000-01-03" min="2000-01-03"，
  组件将不允许用户选择范围外的日期。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.DateInput,
      height: "1000px",
      title: "DateInput 组件 is_addon, color，bordered, control_class, disabled，readonly,label, help_text ,min max "

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

      <DateInput  field={:date}   label="日期"  help_text="请选择日期"    is_addon/>
      <DateInput  field={:date1}   value="2022-03-01"
           label="日期"  help_text="请选择日期"
           bordered  color="primary" control_class="w-52"    />

      <DateInput  field={:date2}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="secondary" control_class="w-56"
           icon_left="clock"  />

      <DateInput  field={:date3}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="accent" control_class="w-60"
           icon_left="clock"  disabled/>

      <DateInput  field={:date4}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="accent" control_class="w-64"
           icon_left="clock"  readonly/>

      <DateInput  field={:date3}
           label="2000-01-02之后日期"  help_text="2000-01-01之后日期"
           bordered  color="accent" control_class="w-64"
           icon_left="clock"  min="2000-01-02"/>

      <DateInput  field={:date4}
           label="2000-01-03之前日期"  help_text="2000-01-03之前日期"
           bordered  color="accent" control_class="w-64"
           icon_left="clock"  max="2000-01-03"/>



    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 date change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end


end