defmodule SelphiDaisy.Form.DateSelect.Example03 do
  @moduledoc """
  DateSelect 日期选择。
  select 没有 readonly
  上报事件参数
  %{
  "dateselect" => %{"day" => "1", "month" => "1", "year" => "2017"},
  }
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.DateSelect,
      height: "1200px",
      title: " DateSelect 组件 位于水平组件中 HGroup，忽略label ",
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

      <HGroup caption="日期"  >
      <DateSelect  field={:dateselect}
           label="日期"  help_text="请选择日期"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日"]}
           year={[options: 2000..2020]}
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}  />
      </HGroup>

      <HGroup caption="日期范围"  >
        <DateSelect  field={:dateselect1}
           label="日期"  help_text="请选择开始日期"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日"]}
           year={[options: 2000..2020]}
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}  />

        <DateSelect  field={:dateselect2}
           label="日期"  help_text="请选择结束日期"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日"]}
           year={[options: 2000..2020]}
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}  />
      </HGroup>


      <HGroup caption="日期范围"  size="xs">
        <DateSelect  field={:dateselect3}
           label="日期"  help_text="请选择开始日期"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日"]}
           year={[options: 2000..2020]}
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}  />

        <DateSelect  field={:dateselect4}
           label="日期"  help_text="请选择结束日期"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日"]}
           year={[options: 2000..2020]}
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}  />
      </HGroup>


      <HGroup caption="日期范围"  size="sm">
        <DateSelect  field={:dateselect3}
           label="日期"  help_text="请选择开始日期"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日"]}
           year={[options: 2000..2020]}
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}  />

        <DateSelect  field={:dateselect4}
           label="日期"  help_text="请选择结束日期"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日"]}
           year={[options: 2000..2020]}
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}  />
      </HGroup>


      <HGroup caption="日期范围"  size="md">
        <DateSelect  field={:dateselect3}
           label="日期"  help_text="请选择开始日期"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日"]}
           year={[options: 2000..2020]}
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}  />

        <DateSelect  field={:dateselect4}
           label="日期"  help_text="请选择结束日期"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日"]}
           year={[options: 2000..2020]}
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}  />
      </HGroup>


      {!-- field-body 默认样式为 flex flex-wrap，当想要添加 垂直分隔线时，需要修改为 flex-col --}
      <HGroup caption="日期范围"  size="lg" body_class="flex-col">
        <DateSelect  field={:dateselect3}
           label="日期"  help_text="请选择开始日期"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日"]}
           year={[options: 2000..2020]}
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}  />

         <Divider >TO</Divider>

        <DateSelect  field={:dateselect4}
           label="日期"  help_text="请选择结束日期"
           bordered  color="secondary"
           icon_left="clock"   separators={[year: "年", month: "月", day: "日"]}
           year={[options: 2000..2020]}
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}  />
      </HGroup>





    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 date-select change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end


end