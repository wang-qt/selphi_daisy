defmodule SelphiDaisy.Form.ColorInput.Example03 do
  @moduledoc """
  ColorInput 颜色控件。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.ColorInput,
      height: "900px",
      title: "ColorInput 组件 位于水平组件中 HGroup，忽略label  ",
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


    <HGroup caption="文本色"  >
      <ColorInput  field={:color}   label="Color"   help_text="请选择颜色" value="#c33c3c"
              bordered  color="info"
              icon_left="pencil" icon_right="document"
               />
     </HGroup>

    <HGroup caption="文本色"  >
      <ColorInput  field={:color1}   label="Color"   help_text="请选择前景颜色" value="#c33c3c"
              bordered  color="info"
              icon_left="pencil" icon_right="document"
               />
      <ColorInput  field={:color2}   label="Color"   help_text="请选择背景颜色" value="#c33c3c"
              bordered  color="info"
              icon_left="pencil" icon_right="document"
               />
     </HGroup>

    <HGroup caption="文本色"  size="xs">
      <ColorInput  field={:color1}   label="Color"   help_text="请选择前景颜色" value="#c33c3c"
              bordered  color="info"
              icon_left="pencil" icon_right="document"
               />
      <ColorInput  field={:color2}   label="Color"   help_text="请选择背景颜色" value="#c33c3c"
              bordered  color="info"
              icon_left="pencil" icon_right="document"
               />
     </HGroup>


    <HGroup caption="文本色"  size="sm">
      <ColorInput  field={:color1}   label="Color"   help_text="请选择前景颜色" value="#c33c3c"
              bordered  color="info"
              icon_left="pencil" icon_right="document"
               />
      <ColorInput  field={:color2}   label="Color"   help_text="请选择背景颜色" value="#c33c3c"
              bordered  color="info"
              icon_left="pencil" icon_right="document"
               />
     </HGroup>


    <HGroup caption="文本色"  size="lg">
      <ColorInput  field={:color1}   label="Color"   help_text="请选择前景颜色" value="#c33c3c"
              bordered  color="info"
              icon_left="pencil" icon_right="document"
               />
      <ColorInput  field={:color2}   label="Color"   help_text="请选择背景颜色" value="#c33c3c"
              bordered  color="info"
              icon_left="pencil" icon_right="document"
               />
     </HGroup>



    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 color change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end


end