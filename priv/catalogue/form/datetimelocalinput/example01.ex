defmodule SelphiDaisy.Form.DateTimeLocalInput.Example01 do
  @moduledoc """
  DateTimeLocalInput  控件。
  DateTimeLocalInput 组件 min,max 为日期字符串，eg max="2000-01-03 09:00:00" min="2000-01-03 09:00:00"，
  组件将不允许用户选择范围外的日期。
  上报格式
  %{
  "datetimelocal" => "",
  "datetimelocal1" => "2022-03-01T08:00:01",
  "datetimelocal2" => "2022-03-27T12:04",
  "datetimelocal3" => "2022-03-27T12:02"
  }
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.DateTimeLocalInput,
      height: "1000px",
      title: "DateInput 组件 is_addon, color，bordered, control_class, disabled，readonly,label, help_text ,min max  step"

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!

  data changeset, :map,
       default:
         SampleModel.changeset(%SampleModel{}, %{
           "username" => "bulma",
           "email" => "hello@"
         })
         |> Map.put(:action, :insert)




  def mount(_params,_session,socket) do

    {:ok, datetime} = DateTime.now("Asia/Shanghai")

    {:ok, assign(socket, datetime: datetime)}
  end

  def render(assigns) do
    ~F"""
    <div class="border-base-300  border flex  min-h-[6rem] min-w-[18rem] max-w-4xl items-center justify-center m-4  ">
    <Form
      for={@changeset}
      change={"change"}
      submit={"submit"}
      opts={autocomplete: "off"}
      class="w-full">

      <DateTimeLocalInput  field={:datetimelocal}   label="日期"  help_text="请选择日期时间"    is_addon/>

      {!-- step默认为60秒，不显示描述。step<60 显示秒数 --}
      <DateTimeLocalInput  field={:datetimelocal1}
           value="2022-03-01 08:00:00"  step=1
           label="日期"  help_text="请选择日期时间"
           bordered  color="primary" control_class="w-64"    />


      {!-- 取当前时间 NaiveDateTime.local_now()  --}
      <DateTimeLocalInput  field={:datetimelocal2}
           value={ NaiveDateTime.local_now() }
           label="日期"  help_text="请选择日期时间"
           bordered  color="secondary" control_class="w-64"
           icon_left="clock"  />

      {!-- 取当前时间  {:ok, datetime} = DateTime.now("Asia/Shanghai")  --}
      <DateTimeLocalInput  field={:datetimelocal3}
           value={ @datetime }
           label="日期"  help_text="请选择日期时间"
           bordered  color="accent" control_class="w-64"
           icon_left="clock"   />


      <DateTimeLocalInput  field={:datetimelocal4}
           value={ @datetime }
           label="日期"  help_text="请选择日期"
           bordered  color="info" control_class="w-60"
           icon_left="clock"  disabled/>


      <DateTimeLocalInput  field={:datetimelocal4}
           value={ @datetime }
           label="日期"  help_text="请选择日期"
           bordered  color="accent" control_class="w-64"
           icon_left="clock"  readonly/>


      <DateTimeLocalInput  field={:datetimelocal5}
           label="2000-01-02之后日期"  help_text="2000-01-01之后日期"
           bordered  color="accent" control_class="w-64"
           icon_left="clock"  min="2000-01-02 08:00" />

      <DateTimeLocalInput  field={:datetimelocal6}
           label="2000-01-03之前日期"  help_text="2000-01-03之前日期"
           bordered  color="accent" control_class="w-64"
           icon_left="clock"  max="2000-01-03 08:00" />


    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 datetimelocal change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end

end