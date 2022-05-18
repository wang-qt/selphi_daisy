defmodule SelphiDaisy.Form.DateInput.Example03 do
  @moduledoc """
  DateInput 颜色控件。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.DateInput,
      height: "700px",
      title: "DateInput 组件 位于水平组件中 HGroup，忽略label   ",
      direction: "vertical"

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias SelphiDaisy.Form.HGroup

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
        <DateInput  field={:date2}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="primary"
           icon_left="clock"  />
      </HGroup>
      <HGroup caption="日期范围"  >

        <DateInput  field={:date2}   value="2022-03-02"
           label="日期"  help_text="请选择开始日期"
           bordered  color="secondary"
           icon_left="clock"   />

        <DateInput  field={:date2}   value="2022-03-02"
           label="日期"  help_text="请选择结束日期"
           bordered  color="accent"
           icon_left="clock"    />
       </HGroup>

      <HGroup caption="日期范围"  size="xs" >
        <DateInput  field={:date3}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="info"
           icon_left="clock"    />

        <DateInput  field={:date4}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="success"
           icon_left="clock"  />
       </HGroup>


      <HGroup caption="日期范围"  size="sm" >
        <DateInput  field={:date3}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="info"
           icon_left="clock"    />

        <DateInput  field={:date4}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="success"
           icon_left="clock"  />
       </HGroup>

      <HGroup caption="日期范围"  size="lg" >
        <DateInput  field={:date3}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="info"
           icon_left="clock"    />

        <DateInput  field={:date4}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="success"
           icon_left="clock"  />
       </HGroup>


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