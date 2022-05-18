defmodule SelphiDaisy.Form.TextInput.Example07 do
  @moduledoc """
  input-text label 和 help 使用  。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.TextInput,
      height: "600px",
      title: "TextInput组件，位于水平组件中 HGroup，忽略label ",
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
    <div class="border-base-300  border flex  min-h-[6rem] min-w-[18rem] max-full items-center justify-center m-4  ">
    <Form
      for={@changeset}
      change={"change"}
      submit={"submit"}
      opts={autocomplete: "off"}
      class="w-full">

     <HGroup caption="一个输入框"  >
         <TextInput  field={:email} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"    icon_right="check"
             label="邮箱"
             help_text="邮箱不能为空"
             value="hello@"
             />

      </HGroup>
      <HGroup caption="两个输入框"  >
         <TextInput  field={:country} placeholder="输入国家"
              bordered   color="primary"
             icon_left="globe"    icon_right="check"
             label="国家"
             help_text="国家不能为空"
             />
         <TextInput  field={:province} placeholder="输入省份"
              bordered   color="secondary"
             icon_left="library"    icon_right="check"
             label="省份"
             help_text="省份不能为空"
             />
         <TextInput  field={:city} placeholder="输入城市"
              bordered   color="accent"
             icon_left="location-marker"    icon_right="check"
             label="城市"
             help_text="城市不能为空"
             />

      </HGroup>

     <HGroup caption="一个输入框" size="xs" >
         <TextInput  field={:email} placeholder="Type here"
              bordered   color="primary"
             icon_left="mail"    icon_right="check"
             label="邮箱"
             help_text="邮箱不能为空"
             value="hello@"
             />

      </HGroup>

      <HGroup caption="两个输入框"  size="sm">
         <TextInput  field={:country} placeholder="输入国家"
              bordered   color="primary"
             icon_left="globe"    icon_right="check"
             label="国家"
             help_text="国家不能为空"
             />
         <TextInput  field={:province} placeholder="输入省份"
              bordered   color="secondary"
             icon_left="library"    icon_right="check"
             label="省份"
             help_text="省份不能为空"
             />
         <TextInput  field={:city} placeholder="输入城市"
              bordered   color="accent"
             icon_left="location-marker"    icon_right="check"
             label="城市"
             help_text="城市不能为空"
             />

      </HGroup>

      <HGroup caption="两个输入框"  size="md">
         <TextInput  field={:country} placeholder="输入国家"
              bordered   color="primary"
             icon_left="globe"    icon_right="check"
             label="国家"
             help_text="国家不能为空"
             />
         <TextInput  field={:province} placeholder="输入省份"
              bordered   color="secondary"
             icon_left="library"    icon_right="check"
             label="省份"
             help_text="省份不能为空"
             />
         <TextInput  field={:city} placeholder="输入城市"
              bordered   color="accent"
             icon_left="location-marker"    icon_right="check"
             label="城市"
             help_text="城市不能为空"
             />

      </HGroup>

      <HGroup caption="两个输入框"  size="lg">
         <TextInput  field={:country} placeholder="输入国家"
              bordered   color="primary"
             icon_left="globe"    icon_right="check"
             label="国家"
             help_text="国家不能为空"
             />
         <TextInput  field={:province} placeholder="输入省份"
              bordered   color="secondary"
             icon_left="library"    icon_right="check"
             label="省份"
             help_text="省份不能为空"
             />
         <TextInput  field={:city} placeholder="输入城市"
              bordered   color="accent"
             icon_left="location-marker"    icon_right="check"
             label="城市"
             help_text="城市不能为空"
             />

      </HGroup>


    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到checkbox change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end

end