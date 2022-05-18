defmodule SelphiDaisy.Form.SearchInput.Example01  do
  @moduledoc """
  SearchInput  示例。
  搜索一般没有对应的 changeset，需要自己设置form的值(atom)
  组件 field对应查询字段。
  上报格式： %{
  "_csrf_token" => "CjQNGEQpSwAHTWtiJhIhXj09GS4GGmoBCxjtua8zm54VtTRgTMMENTRO",
  "_target" => ["search", "q"],
  "search" => %{"q" => "ta"}
  }
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Form.SearchInput,
      height: "900px",
      title: "SearchInput 组件 color，disabled，readonly，placeholder，maxlength，minlength"

  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias  SelphiDaisy.Button
  alias SelphiDaisy.Form.LeftAddon
  alias SelphiDaisy.Form.RightAddon


  alias SelphiDaisy.Card
  alias SelphiDaisy.Card.{Figure,Body}
  alias SelphiDaisy.Card.Body.{Title,Text,Action}

  # 搜索一般没有对应的 changeset，需要自己设置 form的值(atom)

  data query, :string, default: ""

  data results, :map, default: %{}

  def render(assigns) do
    ~F"""
    <div class="border-base-300  border flex  min-h-[6rem] min-w-[18rem] max-w-4xl items-center justify-center m-4  ">
    {!-- 设置form 名称为 :search, 对应上报的 key为 search --}
    <Form
      for={:search}
      change={"change"}
      submit={"submit"}
      opts={autocomplete: "off"}
      class="w-full">

      {!-- change 事件进行检索，并设置 query 和 results，字段 :q 对应上报 %{"search" => %{"q" => "t" }}   --}
      <SearchInput  field={:q}  placeholder="搜索"
               bordered
               list="results"
               value={@query}  results={@results}
               icon_left="search"
               color="primary" >

         {!-- 提交表单，当 button 不是 type="button"时 --}
         <RightAddon>
             <Button  color="secondary" >搜索 </Button>
         </RightAddon>

         {!-- 热搜下拉，当没有搜索结果时显示 --}
         <:hot_search>
           <Card color="primary" class="dropdown-content w-96 top-full" opts={tabindex: "0"}>
            <Body>
             <Title title="Card title!" />
             <Text>
                you can use any element as a dropdown.
             </Text>
            </Body>
          </Card>
         </:hot_search>

      </SearchInput>


    </Form>
    </div>


    """
  end

  def handle_event("change", %{"search" => %{"q" => query} } = params , socket) do
    IO.puts "收到 SearchInput change 事件！"
    IO.inspect params

    results =
      case String.length(query) do
        0 -> %{}
        _ -> search(query)
      end

    {:noreply, assign(socket, results: results, query: query) }
  end

  def handle_event("submit", %{"search" => %{"q" => query} } = params , socket) do
    IO.puts "收到 SearchInput submit 事件！"
    IO.inspect params

    case search(query) do
      %{^query => vsn} ->
        {:noreply, redirect(socket, external: "https://hexdocs.pm/#{query}/#{vsn}")}

      _ ->
        {:noreply,
          socket
          |> put_flash(:error, "No dependencies found matching \"#{query}\"")
          |> assign(results: %{}, query: query)}
    end
  end

  defp search(query) do
    # ???
#    if not SelphiCmsWeb.Endpoint.config(:code_reloader) do
#      raise "action disabled when not in development"
#    end

    if query == "" do
      %{}
    end

    for {app, desc, vsn} <- Application.started_applications(),
        app = to_string(app),
        String.starts_with?(app, query) and not List.starts_with?(desc, ~c"ERTS"),
        into: %{},
        do: {app, vsn}
  end


end