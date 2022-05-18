defmodule SelphiDaisy.Form.TextArea.Example06 do
  @moduledoc """
  TextArea 颜色示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.TextArea,
      height: "500px",
      title: "TextArea 组件 位于水平组件中 HGroup，忽略label ",
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

      <HGroup caption="一个输入框"  >
        <TextArea   field={:textarea} placeholder="Type here"
                  bordered  color="primary"  rows="1"
                  label="简介"
                  help_text="20-50个汉字或字母"/>
      </HGroup>
      <HGroup caption="一个输入框"  >
        <TextArea   field={:textarea} placeholder="Type here"
                  bordered  color="primary"  rows="1"
                  label="简介"
                  control_class="w-72"
                  help_text="20-50个汉字或字母"/>
      </HGroup>

      <HGroup caption="简介和详情"  >
        <TextArea   field={:textarea} placeholder="请输入简介"
                  bordered  color="primary"  rows="1"
                  label="简介"
                  help_text="20-50个汉字或字母"/>
        <TextArea   field={:textarea3} placeholder="请输入详情"
                  bordered  color="primary"  rows="4"
                  label="详情"
                  help_text="50-100个汉字或字母"/>
      </HGroup>



    </Form>
    </div>


    """
  end


  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 textarea change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end
end