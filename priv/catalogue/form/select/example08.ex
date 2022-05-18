defmodule SelphiDaisy.Form.Select.Example08 do
  @moduledoc """
  select  。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.Select,
      height: "750px",
      title: "select 组件   label 和 help_text ",
      direction: "vertical"

  alias SelphiDaisy.Form.SampleModel
  alias SelphiDaisy.Form.HGroup

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


      <HGroup caption="一个输入框"  >
        <Select  field={:select}  bordered color="primary" icon_left="globe"
          label="国家"
          help_text="国家不能为空"
          options={[ "Select dropdown", "with options" ]}/>
      </HGroup>

      <HGroup caption="两个输入框"  >
        <Select  field={:select1}  bordered   color="secondary" icon_left="globe"
          label="国家"
          help_text="国家不能为空"
          options={[ "Select country", "中国", "苏联", "印度"  ]}/>

        <Select  field={:select2}  bordered   color="accent" icon_left="library"
          label="省份"
          help_text="省份不能为空"
          options={[ "Select city", "北京", "上海", "天津", "河南", "陕西" ]}/>
      </HGroup>

      <HGroup caption="3个输入框"  >
        <Select  field={:select3}  bordered   color="primary" icon_left="globe"
          label="国家"
          help_text="国家不能为空"
           options={[ "Select country", "中国", "苏联", "印度"  ]}/>

        <Select  field={:select4}  bordered   color="secondary" icon_left="library"
          label="省份"
          help_text="省份不能为空"
          options={[ "Select city", "北京", "上海", "天津", "河南", "陕西" ]}/>

        <Select  field={:select5}  bordered   color="accent" icon_left="location-marker"
          label="城市"
          help_text="城市不能为空"
          options={[ "Select city", "西安", "宝鸡", "咸阳", "渭南", "铜川" ]}/>
    </HGroup>

    <HGroup caption="两个输入框"  size="xs">
        <Select  field={:select1}  bordered   color="secondary" icon_left="globe"
          label="国家"
          help_text="国家不能为空"
          options={[ "Select country", "中国", "苏联", "印度"  ]}/>

        <Select  field={:select2}  bordered   color="accent" icon_left="library"
          label="省份"
          help_text="省份不能为空"
          options={[ "Select city", "北京", "上海", "天津", "河南", "陕西" ]}/>
    </HGroup>

    <HGroup caption="3个输入框" size="sm" >
        <Select  field={:select3}  bordered   color="primary" icon_left="globe"
          label="国家"
          help_text="国家不能为空"
           options={[ "Select country", "中国", "苏联", "印度"  ]}/>

        <Select  field={:select4}  bordered   color="secondary" icon_left="library"
          label="省份"
          help_text="省份不能为空"
          options={[ "Select city", "北京", "上海", "天津", "河南", "陕西" ]}/>

        <Select  field={:select5}  bordered   color="accent" icon_left="location-marker"
          label="城市"
          help_text="城市不能为空"
          options={[ "Select city", "西安", "宝鸡", "咸阳", "渭南", "铜川" ]}/>
     </HGroup>

    <HGroup caption="两个输入框"  size="md">
        <Select  field={:select1}  bordered   color="secondary" icon_left="globe"
          label="国家"
          help_text="国家不能为空"
          options={[ "Select country", "中国", "苏联", "印度"  ]}/>

        <Select  field={:select2}  bordered   color="accent" icon_left="library"
          label="省份"
          help_text="省份不能为空"
          options={[ "Select city", "北京", "上海", "天津", "河南", "陕西" ]}/>
    </HGroup>
    <HGroup caption="3个输入框" size="lg" >
        <Select  field={:select3}  bordered   color="primary" icon_left="globe"
          label="国家"
          help_text="国家不能为空"
           options={[ "Select country", "中国", "苏联", "印度"  ]}/>

        <Select  field={:select4}  bordered   color="secondary" icon_left="library"
          label="省份"
          help_text="省份不能为空"
          options={[ "Select city", "北京", "上海", "天津", "河南", "陕西" ]}/>

        <Select  field={:select5}  bordered   color="accent" icon_left="location-marker"
          label="城市"
          help_text="城市不能为空"
          options={[ "Select city", "西安", "宝鸡", "咸阳", "渭南", "铜川" ]}/>
     </HGroup>

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