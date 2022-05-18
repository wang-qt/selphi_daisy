defmodule SelphiDaisy.Form.RadioButton.Example04 do
  @moduledoc """
  RadioButton  。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.RadioButton,
      height: "400px",
      title: "RadioButton 组件 位于水平组件中 HGroup, 组件size  ",
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

      <HGroup caption="是否上架？"  >
        <RadioButton          field={:radio}   options={["yes", "no"]} />
      </HGroup>
      <HGroup caption="是否上架？" size="xs" >
        <RadioButton          field={:radio}   options={["yes", "no"]} />
      </HGroup>
      <HGroup caption="是否锁定？" size="sm" >
        <RadioButton  color="primary"     field={:radio1}  options={[{1, "ok"}, {2, "cancel"}]} />
      </HGroup>
      <HGroup caption="是否注册？"  size="md">
        <RadioButton  color="secondary"    field={:radio2}   options={[{1, "确定"}, {2, "取消"}]} />
      </HGroup>
      <HGroup caption="是否退出？" size="lg" >
        <RadioButton  color="accent"      field={:radio3}   options={[{1, "是"}, {2, "否"}]} />
      </HGroup>
    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 radio change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end


end