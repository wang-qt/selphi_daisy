defmodule SelphiDaisy.Form.UrlInput.Example06 do
  @moduledoc """
  UrlInput  示例。
  演示了如何动态修改 按钮链接的 href
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.UrlInput,
      height: "500px",
      title: "UrlInput 组件   addon ",
      direction: "vertical"

  alias SelphiDaisy.Form.SampleModel

  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias SelphiDaisy.Form.HGroup

  alias  SelphiDaisy.Button
  alias  SelphiDaisy.Form.Select
  alias SelphiDaisy.Form.LeftAddon
  alias SelphiDaisy.Form.RightAddon

  data changeset, :map,
       default:
         SampleModel.changeset(%SampleModel{}, %{
           "username" => "bulma",
           "email" => "hello@"
         })
         |> Map.put(:action, :insert)

  data href, :string, default: ""

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
                    color="primary"  icon_left="link"
                    label="链接地址"  help_text="优动漫链接地址"
                    opts={phx_debounce: "blur" }
                    label="链接地址"  help_text="优动漫链接地址"   >
         <RightAddon>
             <a
                role="button" class="btn btn-secondary"
                target="_blank"
                href={@href}
             >GO!</a>
         </RightAddon>
      </UrlInput>



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


    href = Map.get(changes, "url")

    socket = assign(socket, changeset: cs, href: href )
    {:noreply, socket}
  end

  def handle_event("submit", %{"sample_model" => changes}, socket) do
    IO.puts "收到 UrlInput submit 事件！"
    IO.inspect changes

    cs =
      SampleModel.changeset(%SampleModel{}, changes)
      |> Map.put(:action, :insert)


    socket = assign(socket, :changeset, cs)
    {:noreply, socket}
  end





end