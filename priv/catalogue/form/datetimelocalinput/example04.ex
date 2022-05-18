defmodule SelphiDaisy.Form.DateTimeLocalInput.Example04 do
  @moduledoc """
  DateTimeLocalInput  控件。
  DateTimeLocalInput 组件 min,max 为日期字符串，eg max="2000-01-03 09:00:00" min="2000-01-03 09:00:00"，
  组件将不允许用户选择范围外的日期。
  上报格式
  %{
  "datetimelocal" => "",
  "datetimelocal1" => "2022-03-01T08:00:01",
  "datetimelocal2" => "2022-03-27T12:04",
  "datetimelocal3" => "2022-03-27T12:02"
  }
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.DateTimeLocalInput,
      height: "400px",
      title: "DateInput 组件 addon",
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
           "email" => "hello@"
         })
         |> Map.put(:action, :insert)




  def mount(_params,_session,socket) do

    {:ok, datetime} = DateTime.now("Asia/Shanghai")

    {:ok, assign(socket, datetime: datetime)}
  end

  def render(assigns) do
    ~F"""
    <div class="border-base-300  border flex  min-h-[6rem] min-w-[18rem] max-w-4xl items-center justify-center m-4  ">
    <Form
      for={@changeset}
      change={"change"}
      submit={"submit"}
      opts={autocomplete: "off"}
      class="w-full">


      <DateTimeLocalInput  field={:datetimelocal}
          value={ @datetime }  step=1
           label="日期"  help_text="请选择日期时间"
           bordered  color="primary"   icon_left="clock"    >
          <LeftAddon>
            <Button outline color="primary" >primary </Button>
          </LeftAddon>
      </DateTimeLocalInput>


      <DateTimeLocalInput  field={:datetimelocal1}
          value={ @datetime }  step=1
           label="日期"  help_text="请选择日期时间"
           bordered  color="primary"   icon_left="clock"    >
          <RightAddon>
            <Button outline color="primary" >primary </Button>
          </RightAddon>
      </DateTimeLocalInput>


    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 datetimelocal change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end

end