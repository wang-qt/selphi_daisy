defmodule SelphiDaisy.Form.DateTimeSelect.Example01 do
  @moduledoc """
  DateSelect 日期选择。
  select 没有 readonly
  上报事件参数
  %{
  "dateselect" => %{"day" => "1", "month" => "1", "year" => "2017"},
  }
  """

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.DateTimeSelect,
      height: "900px",
      title: "DateTimeSelect 组件 is_addon, color，bordered, control_class, disabled,label, help_text, separators,year ,month,day,hour,minute  ",
      direction: "vertical"

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

      <DateTimeSelect  field={:datetimeselect}   label="日期/时间"  help_text="请选择日期时间"    is_addon/>


      <DateTimeSelect  field={:datetimeselect1}
           second={[]}
           label="日期/时间"  help_text="请选择日期时间"
           bordered  color="primary"   />


      <DateTimeSelect  field={:datetimeselect2}
           label="日期/时间"  help_text="请选择日期时间"
           bordered  color="secondary"
           icon_left="clock"    />

      <DateTimeSelect  field={:datetimeselect3}
           label="日期/时间"  help_text="请选择日期时间"
           bordered  color="secondary"
           icon_left="clock"   disabled  />


      <DateTimeSelect  field={:dateselect4}
           label="日期/时间"  help_text="请选择日期时间"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日", hour: "点", minute: "分", second: "秒"]}  />

      {!-- 上报value为数字 --}
      <DateTimeSelect  field={:dateselect5}
           label="日期/时间"  help_text="请选择日期时间"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日", hour: "点", minute: "分", second: "秒"]}
           year={[options: 2000..2020]}
           month={ [
           options: [{"一月",1}, {"二月", 2}, {"三月",3}, {"四月",4}, {"五月",5}, {"六月",6}, {"七月",7}, {"八月",8}, {"九月",9}, {"十月",10}, {"十一月",11}, {"十二月",12}]
                 ]}  />

      {!-- 上报value为汉字 --}
      <DateTimeSelect  field={:dateselect6}
           label="日期/时间"  help_text="请选择日期时间"
           bordered  color="secondary"
           icon_left="clock"    separators={[year: "年", month: "月", day: "日", hour: "点", minute: "分", second: "秒"]}
           year={[options: 2000..2020]}
           month={ [
           options: ["一月", "二月", "三月", "四月", "五月", "六月", "七月","八月","九月","十月","十一月","十二月"]
                 ]}  />



    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 date-time-select change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end


end