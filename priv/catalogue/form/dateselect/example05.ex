defmodule SelphiDaisy.Form.DateSelect.Example05 do
  @moduledoc """
  DateSelect 日期选择。
  select 没有 readonly
  上报事件参数
  %{
  "dateselect" => %{"day" => "1", "month" => "1", "year" => "2017"},
  }
  value = Keyword.get(opts, :value, input_value(form, field) || Keyword.get(opts, :default))
  value格式：
  1. map包含 year,month,day  key，类型atom或string
  2.  a tuple with three elements: `{year, month, day}`
  3. a string in ISO 8601 format eg. "2022-03-08T17:30:08+08:00"
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.DateSelect,
      height: "600px",
      title: " DateSelect 组件 value default, 首先使用 value，value不存在使用 form.params.filed || default  ",
      direction: "vertical"

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias SelphiDaisy.Form.HGroup
  alias SelphiDaisy.Button
  alias SelphiDaisy.Form.LeftAddon
  alias SelphiDaisy.Form.RightAddon

  data changeset, :map,
       default:
         SampleModel.changeset(%SampleModel{}, %{
           "username" => "bulma",
           "email" => "hello@",
           "dateselect3" => "2022-03-11",
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

      {!-- value 为 map--}
      <DateSelect  field={:dateselect}
           label="日期"  help_text="请选择日期"
           bordered  color="primary"
           icon_left="clock"
           year={[options: 2000..2030]}
           value={ %{year: 2022, month: 3, day: 8}}
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}   >
      </DateSelect>

     {!-- value 为 tuple--}
      <DateSelect  field={:dateselect1}
           label="日期"  help_text="请选择日期"
           bordered  color="secondary"
           icon_left="clock"
           year={[options: 2000..2030]}
           value={ {2022, 3, 9}}
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}   >
      </DateSelect>


      {!-- value 为 string, 只能使用date  不能使用时间  2022-03-11T14:30:05Z --}
      <DateSelect  field={:dateselect2}
           label="日期"  help_text="请选择日期"
           bordered  color="accent"
           icon_left="clock"
           year={[options: 2000..2030]}
           value="2022-03-10"
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}   >
      </DateSelect>

      {!--   form 中的数据, 优先级高于 default   --}
      <DateSelect  field={:dateselect3}
           label="日期"  help_text="请选择日期"
           bordered  color="info"
           icon_left="clock"
           year={[options: 2000..2030]}
           default="2022-03-12"
           month={ [
               options: [{"一 月",1}, {"二 月", 2}, {"三 月",3}, {"四 月",4}, {"五 月",5}, {"六 月",6},
                         {"七 月",7}, {"八 月",8}, {"九 月",9}, {"十 月",10}, {"十一月",11}, {"十二月",12}]
           ]}   >
      </DateSelect>




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