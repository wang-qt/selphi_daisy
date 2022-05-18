defmodule SelphiDaisy.Form.DateTimeSelect.Example03 do
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
      title: "DateTimeSelect 组件 位于水平组件中 HGroup，忽略label   ",
      direction: "vertical"

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias SelphiDaisy.Form.HGroup
  alias SelphiDaisy.Divider

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

      {!-- 上报value为数字 --}
      <HGroup caption="日期"  >
        <DateTimeSelect  field={:dateselect}
           label="日期/时间"  help_text="请选择日期时间"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日", hour: "点", minute: "分", second: "秒"]}
           year={[options: 2000..2020]}
           month={ [
           options: [{"一月",1}, {"二月", 2}, {"三月",3}, {"四月",4}, {"五月",5}, {"六月",6}, {"七月",7}, {"八月",8}, {"九月",9}, {"十月",10}, {"十一月",11}, {"十二月",12}]
                 ]}  />
       </HGroup>

      {!-- 上报value为数字 --}
      <HGroup caption="日期范围"  >
        <DateTimeSelect  field={:dateselect1}
           label="日期/时间"  help_text="请选择开始日期时间"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日", hour: "点", minute: "分", second: "秒"]}
           year={[options: 2000..2020]}
           month={ [
           options: [{"一月",1}, {"二月", 2}, {"三月",3}, {"四月",4}, {"五月",5}, {"六月",6}, {"七月",7}, {"八月",8}, {"九月",9}, {"十月",10}, {"十一月",11}, {"十二月",12}]
                 ]}  />

        <DateTimeSelect  field={:dateselect2}
           label="日期/时间"  help_text="请选择结束日期时间"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日", hour: "点", minute: "分", second: "秒"]}
           year={[options: 2000..2020]}
           month={ [
           options: [{"一月",1}, {"二月", 2}, {"三月",3}, {"四月",4}, {"五月",5}, {"六月",6}, {"七月",7}, {"八月",8}, {"九月",9}, {"十月",10}, {"十一月",11}, {"十二月",12}]
                 ]}  />


       </HGroup>

      <HGroup caption="日期范围"  size="xs">
        <DateTimeSelect  field={:dateselect3}
           label="日期/时间"  help_text="请选择开始日期时间"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日", hour: "点", minute: "分", second: "秒"]}
           year={[options: 2000..2020]}
           month={ [
           options: [{"一月",1}, {"二月", 2}, {"三月",3}, {"四月",4}, {"五月",5}, {"六月",6}, {"七月",7}, {"八月",8}, {"九月",9}, {"十月",10}, {"十一月",11}, {"十二月",12}]
                 ]}  />

        <DateTimeSelect  field={:dateselect4}
           label="日期/时间"  help_text="请选择结束日期时间"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日", hour: "点", minute: "分", second: "秒"]}
           year={[options: 2000..2020]}
           month={ [
           options: [{"一月",1}, {"二月", 2}, {"三月",3}, {"四月",4}, {"五月",5}, {"六月",6}, {"七月",7}, {"八月",8}, {"九月",9}, {"十月",10}, {"十一月",11}, {"十二月",12}]
                 ]}  />


       </HGroup>

      {!-- field-body 默认样式为 flex flex-wrap，当想要添加 垂直分隔线时，需要修改为 flex-col --}
      <HGroup caption="日期范围"  size="md"  body_class="flex-col">
        <DateTimeSelect  field={:dateselect5}
           label="日期/时间"  help_text="请选择开始日期时间"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日", hour: "点", minute: "分", second: "秒"]}
           year={[options: 2000..2020]}
           month={ [
           options: [{"一月",1}, {"二月", 2}, {"三月",3}, {"四月",4}, {"五月",5}, {"六月",6}, {"七月",7}, {"八月",8}, {"九月",9}, {"十月",10}, {"十一月",11}, {"十二月",12}]
                 ]}  />

        <Divider >TO</Divider>

        <DateTimeSelect  field={:dateselect6}
           label="日期/时间"  help_text="请选择结束日期时间"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日", hour: "点", minute: "分", second: "秒"]}
           year={[options: 2000..2020]}
           month={ [
           options: [{"一月",1}, {"二月", 2}, {"三月",3}, {"四月",4}, {"五月",5}, {"六月",6}, {"七月",7}, {"八月",8}, {"九月",9}, {"十月",10}, {"十一月",11}, {"十二月",12}]
                 ]}  />


       </HGroup>



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