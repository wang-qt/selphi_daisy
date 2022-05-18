defmodule SelphiDaisy.Form.UrlInput.Example01 do
  @moduledoc """
  UrlInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.UrlInput,
      height: "500px",
      title: "UrlInput 组件 color，disabled，readonly，placeholder，maxlength，minlength pattern"

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

      <UrlInput  field={:url} placeholder="eg.http://udongman.cn" is_addon />


      <UrlInput  field={:url1} placeholder="eg.http://udongman.cn" bordered />
      <UrlInput  field={:url2} placeholder="eg.http://udongman.cn" bordered
                     color="primary" />

      <UrlInput  field={:url3} placeholder="eg.http://udongman.cn" bordered
                     color="primary" disabled />
      <UrlInput  field={:url4} placeholder="eg.http://udongman.cn" bordered
                     color="secondary" readonly  value="http://udongman.cn" />

      <UrlInput  field={:url5} placeholder="eg.http://udongman.cn" bordered
                     color="accent"
                     opts={pattern: ".*\.udongman\..*"} />

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