defmodule SelphiDaisy.Form.UrlInput.Example05 do
  @moduledoc """
  UrlInput  示例。
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.UrlInput,
      height: "500px",
      title: "UrlInput 组件 位于水平组件中 HGroup，忽略label ",
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

      <HGroup caption="链接"  >
          <UrlInput  field={:url} placeholder="eg.http://udongman.cn" bordered
                    color="primary"  icon_left="link"
                    label="链接地址"  help_text="优动漫链接地址"
                    opts={phx_debounce: "blur" }
                    label="链接地址"  help_text="优动漫链接地址"  />
      </HGroup>

      <HGroup caption="链接"  >
          <UrlInput  field={:url1} placeholder="eg.http://udongman.cn" bordered
                    color="primary"  icon_left="link"
                    label="链接地址"  help_text="优动漫链接地址"
                    opts={phx_debounce: "blur" }
                    label="链接地址"  help_text="优动漫链接地址"  />

         <UrlInput  field={:url2} placeholder="eg.http://udongman.cn" bordered
                    color="primary"  icon_left="link"
                    label="链接地址"  help_text="优动漫链接地址"
                    opts={phx_debounce: "blur" }
                    label="链接地址"  help_text="新漫画链接地址"  />
      </HGroup>

      <HGroup caption="链接"  size="xs">
          <UrlInput  field={:url3} placeholder="eg.http://udongman.cn" bordered
                    color="primary"  icon_left="link"
                    label="链接地址"  help_text="优动漫链接地址"
                    opts={phx_debounce: "blur" }
                    label="链接地址"  help_text="优动漫链接地址"  />

         <UrlInput  field={:url4} placeholder="eg.http://udongman.cn" bordered
                    color="primary"  icon_left="link"
                    label="链接地址"  help_text="优动漫链接地址"
                    opts={phx_debounce: "blur" }
                    label="链接地址"  help_text="新漫画链接地址"  />
      </HGroup>

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