defmodule SelphiDaisy.Form.DateInput.Example02 do
  @moduledoc """
  DateInput 颜色控件。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.DateInput,
      height: "700px",
      title: "DateInput 组件 size  "

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

      <DateInput  field={:date2}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="primary" control_class="w-56"
           icon_left="clock"  />

      <DateInput  field={:date2}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="secondary" control_class="w-56"
           icon_left="clock"  size="xs"/>

      <DateInput  field={:date2}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="accent" control_class="w-56"
           icon_left="clock"  size="sm" />

      <DateInput  field={:date3}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="info" control_class="w-60"
           icon_left="clock"  size="md" />

      <DateInput  field={:date4}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="success" control_class="w-64"
           icon_left="clock"  size="lg" />



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