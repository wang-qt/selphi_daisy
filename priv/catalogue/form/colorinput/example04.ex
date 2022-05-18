defmodule SelphiDaisy.Form.ColorInput.Example04 do
  @moduledoc """
  ColorInput 颜色控件。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.ColorInput,
      height: "900px",
      title: "ColorInput 组件 addon ",
      direction: "vertical"

  alias SelphiDaisy.Form.SampleModel

  alias  Surface.Components.Form  # 直接使用底层 Form!!
  alias  SelphiDaisy.Form.HGroup
  alias  SelphiDaisy.Button
  alias  SelphiDaisy.Form.LeftAddon
  alias  SelphiDaisy.Form.RightAddon

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


      <ColorInput  field={:color}   label="Color"   help_text="请选择颜色" value="#c33c3c"
              bordered  color="info"
               >
         <LeftAddon>
             <Button outline color="primary" >primary </Button>
         </LeftAddon>
      </ColorInput>


      <ColorInput  field={:color}   label="Color"   help_text="请选择颜色" value="#c33c3c"
              bordered  color="info"
               >
         <RightAddon>
             <Button outline color="primary" >primary </Button>
         </RightAddon>
      </ColorInput>


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