defmodule SelphiDaisy.Form.UrlInput.Example03 do
  @moduledoc """
  UrlInput  示例。
  opts 的用法，当鼠标离开输入框时，或时间 1秒发送一个 change 事件！！
   opts={phx_debounce: 1000 }  opts={phx_debounce: "blur" }
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.UrlInput,
      height: "500px",
      title: "UrlInput 组件  loading  class control_class 改变输入框大小  opts={phx_debounce: 1000 } "

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

      <UrlInput  field={:url} placeholder="eg.http://udongman.cn" bordered
                     color="primary" icon_left="link" loading/>

      <UrlInput  field={:url1} placeholder="eg.http://udongman.cn" bordered
                     color="secondary"  icon_left="link"
                     control_class="w-40" />

      <UrlInput  field={:url2} placeholder="eg.http://udongman.cn" bordered
                      color="accent"  icon_left="link"
                     control_class="w-40"  class="rounded-full" />

      <UrlInput  field={:url3} placeholder="eg.http://udongman.cn" bordered
                      color="info"  icon_left="link"  icon_right="document"  />

      <UrlInput  field={:url4} placeholder="eg.http://udongman.cn" bordered
                      color="success"  icon_left="link"
                      opts={phx_debounce: "blur" }  />



    </Form>
    </div>


    """
  end

  def handle_event("change", %{"sample_model" => changes}, socket) do
    IO.puts "收到 UrlInput change 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end





end