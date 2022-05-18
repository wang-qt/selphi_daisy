defmodule SelphiDaisy.Form.DateInput.Example04 do
  @moduledoc """
  DateInput 颜色控件。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.DateInput,
      height: "300px",
      title: "DateInput 组件 addon  ",
      direction: "vertical"

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias SelphiDaisy.Form.HGroup
  alias SelphiDaisy.Form.LeftAddon
  alias SelphiDaisy.Form.RightAddon

  alias  SelphiDaisy.Button


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

        <DateInput  field={:date}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="primary"
           icon_left="clock"   >
          <LeftAddon>
            <Button outline color="primary" >primary </Button>
          </LeftAddon>
        </DateInput>

        <DateInput  field={:date1}   value="2022-03-02"
           label="日期"  help_text="请选择日期"
           bordered  color="secondary"
           icon_left="clock"   >
          <RightAddon>
            <Button outline color="primary" >primary </Button>
          </RightAddon>
        </DateInput>





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