defmodule SelphiDaisy.Markdown.Example02 do
  @moduledoc """
  Markdown 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Markdown,
      height: "1800px",
      title: " Markdown 在线编辑 ",
      direction: "vertical"

  alias Surface.Components.Markdown # 直接使用底层 Markdown!!
  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias SelphiDaisy.Form.TextArea

  alias SelphiDaisy.Prose

  @doc"编辑器原始内容"
  data markdown, :string, default: ""

  def render(assigns) do
    ~F"""
    <div class=" flex gap-2  min-h-[6rem] min-w-[18rem]  items-start justify-between   ">
      <Form
        for={:mark}
        change={"change"}
        submit={"submit"}
        opts={autocomplete: "off"}
        class="flex-1">

        <TextArea   field={:text }  placeholder="Type here"
                   bordered  color="primary"
                   rows="20" opts={ onkeyup: "preview( `#{@markdown}`) " } />

      </Form>

      <div id="prose" class="prose prose-sm flex-1"  >
      </div>


       {!--
      <#Markdown class="prose prose-base prose-a:text-blue-600 hover:prose-a:text-red-500 flex-1">
         {@markdown}
      </#Markdown>
       --}

     <script type="text/javascript">
        function preview( html  ){
          console.log("preview")
           const prose = document.getElementById('prose');
           prose.innerHTML = html;
        }
    </script>

    </div>
    """
  end

  def handle_event("change", %{"mark" => %{"text" => text } } = params , socket) do
    IO.puts "收到 markdown change 事件！"
    IO.inspect params

    markdown = Earmark.as_html!(text, compact_output: false, escape: false)

    {:noreply, assign(socket,  markdown: markdown ) }
  end




end