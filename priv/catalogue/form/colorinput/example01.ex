defmodule SelphiDaisy.Form.ColorInput.Example01 do
  @moduledoc """
  ColorInput 颜色控件。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.ColorInput,
      height: "900px",
      title: "ColorInput 组件 is_addon, color，bordered, control_class, disabled，readonly,label, help_text  "

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

      <ColorInput  field={:color}   label="Color"  help_text="请选择颜色"  value="#c33c3c"  is_addon/>
      <ColorInput  field={:color1}   label="Color"  help_text="请选择颜色"  value="#c33c3c"
              bordered  color="primary" control_class="w-36" />
      <ColorInput  field={:color2}   label="Color"   value="#c33c3c"
              bordered  color="secondary" control_class="w-32"/>

     <ColorInput  field={:color3}   label="Color"    value="#c33c3c"
              bordered  color="accent" control_class="w-28"
              icon_left="pencil" />

     <ColorInput  field={:color4}   label="Color"    value="#c33c3c"
              bordered  color="info" control_class="w-20"
              icon_right="pencil"  disabled />

     <ColorInput  field={:color4}   label="Color"    value="#c33c3c"
              bordered  color="info" control_class="w-24"
              icon_left="pencil" icon_right="document"   />



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