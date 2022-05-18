defmodule SelphiDaisy.Table do
  @moduledoc """
  Table 组件，样式 by https://daisyui.com/components/table/

  原理参见：Surface文档 slot 示例组件, by https://surface-ui.org/slots
  grid 使用 Binding slot arguments to generators

  额外的样式_table.scss
  样式修改重点：
  1. table 设置最小宽度 @apply min-w-full w-auto; style="table-layout: fixed;"
  2. 在列上设置宽度 <Column title="job" width="250px">
  3. 此列的th上添加 whitespace-normal  break-all style="min-width: 250px;"
     这里是关键，设置宽度无效，只能设置最小宽度
  4. 此列的所有 td 设置  whitespace-normal  break-all
  5. 只需要在有长字符串的列上添加 width="250px"，其余列自动计算宽高，默认不换行！！
  6. 如果字段过长，会撑开td高度，所以需要使用程序限制字符总个数，过长的剪切掉。

  - table	`Component`	For <table> element
  - table-zebra	`Modifier`	For the active tab
  - active	`Modifier`	For <tr> to highlight current row
  - hover	`Modifier`	For <tr> to highlight current row on hover
  - table-normal	`Responsive`	Normal paddings
  - table-compact	`Responsive`	Compact paddings



  """
#  use Surface.Component
 # table修改为状态组件，显示隐藏字段form，把事件发送给自己，不需要重新获取数据！
 # 需要重新获取数据的，例如排序，分页，搜索，需要发送给 lv
  use Surface.LiveComponent

  alias Surface.Components.Form  # 直接使用底层 Form!!
  alias Surface.Components.Form.HiddenInput
  alias  SelphiDaisy.Form.{Select, NumberInput,DateInput,DateTimeLocalInput,TextInput,Checkbox}

  alias SelphiDaisy.Form.LeftAddon
  alias SelphiDaisy.Form.HGroup

  alias SelphiDaisy.Navbar
  alias SelphiDaisy.Navbar.{NavStart,NavCenter,NavEnd}

  alias SelphiDaisy.{Button, ButtonLink}
  alias SelphiDaisy.Heroicons
  alias SelphiDaisy.Cssgg

  alias SelphiDaisy.Menu
  alias SelphiDaisy.Menu.{Item,SubMenu}
  alias Surface.Components.{Link, LiveRedirect, LivePatch}
  alias SelphiDaisy.Dropdown
  alias SelphiDaisy.Dropdown.Label

  alias SelphiDaisy.Indicator
  alias SelphiDaisy.Card
  alias SelphiDaisy.Card.Body
  alias SelphiDaisy.Divider

  alias   Phoenix.LiveView.JS

  @doc "表格最左侧是否有 检查框，"
  prop check, :boolean

  @doc "表格行hover是否有样式变化"
  prop hover, :boolean

  @doc "斑马样式"
  prop zebra, :boolean

  @doc "是否有 footer"
  prop  footer, :boolean



  @doc "表格内容列表，列表每项为一个map，对应一行"
  prop items, :list, required: true

  @doc "其他tw类 table-compact sm:table-normal "
  prop class, :css_class, default: []


  #  表格添加 分页/排序 相关属性
  @doc "分页大小，设置 select 组件的 selected 属性"
  prop  per_page, :integer, default: 20

  @doc "用于排序的字段，只能有一个"
  data  sort_field, :string, default: nil

  @doc "排序方向，nil asc desc，排序字段默认为nil(不排序)，点击后为asc，再次点击为desc "
  data  sort_order, :string, default: nil


  @doc "表格搜索条件"
  prop  filters, :list, default: []

  @doc "配置批量操作"
  prop  batch_actions, :list, default: []

  @doc "配置行操作"
  prop  action_buttons, :list, default: []


  @doc "创建新对象url地址,不设置此字段，隐藏 新建 按钮"
  prop  new_url, :string, required: true, default: nil

  @doc "是否显示过滤按钮"
  prop searchable, :boolean, required: true, default: nil

  @doc "The list of columns defining the Grid"
  slot cols, args: [item: ^items], required: true


  def update(%{sort_field: field, sort_order: order} = assigns, socket) do
    new_order = case order do
          nil -> "asc"
          "asc"  -> "desc"
          "desc"  -> "asc"
    end

    {:ok,
      socket
      |> assign(assigns) # 此句不能少，否则class找不到定义
      |> assign(:sort_field, field)
      |> assign(:sort_order, new_order)
    }
  end
#  def update(%{ per_page: per_page } = assigns, socket) do
#
#    {:ok,
#      socket
#      |> assign(assigns) # 此句不能少，否则class找不到定义
#      |> assign(:per_page, per_page)
#    }
#  end

  def update(assigns, socket) do
    {:ok,
      socket
      |> assign(assigns) # 此句不能少，否则class找不到定义
    }
  end


  def render(assigns) do
    ~F"""
    {!-- nav --}
    <div class="flex flex-wrap items-start justify-center gap-2 border-b border-primary">
       { render_table_nav(assigns) }
    </div>

    {!-- 搜索表单 --}
    <div id="table-filter-form" style="display: none;">{ render_search_from(assigns) }</div>

    <div id="table" class="overflow-x-auto w-full" :hook="Table">
      <table
       class={["table", "w-full", "table-zebra": @zebra] ++ @class }
       style="table-layout: fixed;"
      >

      <thead>
        <tr>
          {#if  @check }
          <th><label>
             <input id="over-all-check" type="checkbox" class="checkbox" >

          </label></th>
          {/if}

          {#for col <- @cols}
            {#if col.hide }
            {#else}
              { render_th(assigns, col) }
            {/if}
          {/for}
        </tr>
      </thead>
      <tbody id="tbody" phx-update="replace"  >
        {#for item <- @items}
          {!--    模型没有 selected 字段，需要使用 其他方法！！
          <tr id={"row-#{item.id}"} class={"hover": @hover,"active": item[:selected] }>
          --}
          <tr id={"row-#{item.id}"} class={"hover": @hover }>
            {#if @check }
            <th>
              <label>
                <input  type="checkbox" name="check_rows" class="checkbox check-row checkbox-primary" value={ item.id } >
              </label>
            </th>
            {/if}

            {#for {col, index} <- Enum.with_index(@cols)}
                 {#if col.hide }
                 {#else}
                     {#if col.width}
                     <td class={["whitespace-normal","break-all"]
                                  ++ col.class }>
                        <#slot name="cols" index={index} :args={item: item} />
                     </td>
                     {#else}
                     <td  class={col.class} ><#slot name="cols" index={index} :args={item: item} /></td>
                     {/if}
                 {/if}
            {/for}
          </tr>
        {/for}
      </tbody>
      {#if @footer}
      <tfoot>
         {#if  @check }
           <th><label>
             <input id="over-all-check-bottom" type="checkbox" class="checkbox">
           </label></th>
         {/if}
         {#for col <- @cols}
            <th>{col.title}</th>
         {/for}
      </tfoot>
      {/if}
      </table>


    </div>
    """
  end

  defp render_search_from(assigns) do
    {:ok, now } = DateTime.now("Asia/Shanghai")
  ~F"""
  <div class="my-5 border-b  border-primary">
          <Form
            for={:search}
            change={"change"}
            submit={"submit"}
            opts={autocomplete: "off"}
            class="w-full grid grid-cols-2">
            {#for  col <- @cols }
               {#if col.search }
                   <HGroup caption={ col.title } size="sm" >
                   {#case col.type}
                      {#match "number"}
                          <TextInput  field={col.field}  bordered  color="primary"
                                        icon_left="variable"
                                        label={col.title}
                                        opts={phx_debounce: "blur" }
                                        value={ get_filter_value(assigns, col.field ) }
                                        help_text={"请输入#{col.title}"}  >
                             <LeftAddon>
                                <Select  is_addon size="sm" field={col.field <> "_op"}  bordered color="primary"
                                  selected={ get_filter_op(assigns, col.field ) || "==" }
                                  options={[ {"等于","=="},{"不等于","!="},{"小于等于","<="},{"大于等于",">="}, {"小于", "<"},{"大于", ">"},{"包含", "in"}, {"介于", "between"} ]} />
                             </LeftAddon>
                          </TextInput>
                      {#match "select"}
                         <Select  field={col.field}    bordered  color="primary"
                                  label={col.title}  help_text={"请选择#{col.title}"} icon_left="search"
                                  prompt={[key: "请选择#{col.title}"]}
                                  opts={phx_debounce: "blur" }
                                  selected={ get_filter_value(assigns, col.field ) }
                                  options={col.options}    >
                             <LeftAddon>
                               <Select  is_addon size="sm" field={col.field <> "_op"}  bordered color="primary"
                                  selected={ get_filter_op(assigns, col.field ) || "==" }
                                  options={[ {"等于", "=="} ]} />
                             </LeftAddon>
                         </Select>
                      {#match "date"}
                         <DateInput   field={col.field}   bordered  color="primary"
                                      icon_left="clock"
                                      label={col.title }
                                      help_text={"请输入#{col.title}"}
                                      opts={phx_debounce: "blur" }
                                      value={ get_filter_value(assigns, col.field ) ||  Enum.at(col.options, 0) ||  Date.utc_today |> Date.to_string }  >
                              <LeftAddon>
                                 <Select  is_addon size="sm" field={col.field <> "_op"}  bordered color="primary"
                                   selected={ get_filter_op(assigns, col.field ) || "==" }
                                   options={[{"于","d=="}, {"晚于","d>"}, {"早于","d<"},
                                            {"前7天","d<7d"} , {"后7天","d>7d"},
                                            {"前30天","d<30d"} , {"后30天","d>30d"},
                                            {"前1年","d<1y"} , {"后1年","d>1y"} ]} />
                              </LeftAddon>
                         </DateInput>
                      {#match "date-range"}
                          <DateInput   field={col.field <> "_bgn"}   bordered  color="primary"
                                       icon_left="clock"
                                       label={col.title }
                                       help_text={"请输入#{col.title}开始日期"}
                                       opts={phx_debounce: "blur" }
                                       {!-- 后台处理后，filter 中的 key 为原始字段名 --}
                                       value={ get_filter_value(assigns, col.field ) |> String.split(",") |> Enum.at(0) || Enum.at(col.options, 0) ||  Date.utc_today |> Date.to_string }
                                     >
                               <LeftAddon>
                                  <Button outline color="primary" size="sm" >开始 </Button>
                               </LeftAddon>
                          </DateInput>
                          <DateInput   field={col.field <> "_end"}   bordered  color="secondary"
                                       icon_left="clock"
                                       label={col.title }
                                       help_text={"请输入#{col.title}结束日期"}
                                       opts={phx_debounce: "blur" }
                                       value={ get_filter_value(assigns, col.field ) |> String.split(",") |> Enum.at(1) || Enum.at(col.options, 1) ||  Date.utc_today |> Date.to_string }
                                    >
                               <LeftAddon>
                                  <Button outline color="secondary" size="sm" >结束 </Button>
                               </LeftAddon>
                          </DateInput>
                          <HiddenInput field={col.field <> "_op"}  value="d-between" />

                      {#match "datetime"}
                            <DateTimeLocalInput  field={col.field}   bordered  color="primary"
                                             icon_left="clock"
                                             label={col.title }  help_text={"请输入#{col.title}"}
                                             opts={phx_debounce: "blur" }
                                             value={ get_filter_value(assigns, col.field ) || Enum.at(col.options, 0) || now }  step=1       >
                                    <LeftAddon>
                                         <Select  is_addon size="sm" field={col.field <> "_op"}  bordered color="primary"
                                               selected={ get_filter_op(assigns, col.field ) || "==" }
                                               options={[ {"于","=="}, {"晚于",">"}, {"早于","<"},
                                                   {"前1小时","<1h"} , {"后1小时",">1h"}, {"前1天","<1d"} , {"后1天",">1d"},
                                                   {"前7天","<7d"} , {"后7天",">7d"}, {"前30天","<30d"} , {"后30天",">30d"},
                                                   {"前1年","<1y"} , {"后1年",">1y"}
                                               ]} />
                                    </LeftAddon>
                            </DateTimeLocalInput>
                      {#match "datetime-range"}
                          <DateTimeLocalInput  field={col.field <> "_bgn" }   bordered  color="primary"
                                           icon_left="clock"
                                           label={col.title }  help_text={"请输入#{col.title}开始时间"}
                                           opts={phx_debounce: "blur" }
                                           value={ get_filter_value(assigns, col.field ) |> String.split(",") |> Enum.at(0) || Enum.at(col.options, 0) || now }  step=1       >
                                  <LeftAddon>
                                     <Button outline color="primary" size="sm" >开始 </Button>
                                  </LeftAddon>
                          </DateTimeLocalInput>

                          <DateTimeLocalInput  field={col.field <> "_end"}   bordered  color="secondary"
                                           icon_left="clock"
                                           label={col.title }  help_text={"请输入#{col.title}结束时间"}
                                           opts={phx_debounce: "blur" }
                                           value={ get_filter_value(assigns, col.field ) |> String.split(",") |> Enum.at(1) || Enum.at(col.options, 1) || now }  step=1       >
                                  <LeftAddon>
                                     <Button outline color="secondary" size="sm" >结束 </Button>
                                  </LeftAddon>
                          </DateTimeLocalInput>
                          <HiddenInput field={col.field <> "_op"}  value="dt-between" />
                      {#match _}
                          <TextInput  field={col.field}  bordered  color="primary"
                                              icon_left="email"
                                              label={col.title}
                                              placeholder={"请输入#{col.title}"}
                                              opts={phx_debounce: "blur" }
                                              value={ get_filter_value(assigns, col.field ) }
                                              help_text={"请输入#{col.title}"}  >
                                   <LeftAddon>
                                      <Select  is_addon size="sm" field={col.field <> "_op"}  bordered color="primary"
                                          selected={ get_filter_op(assigns, col.field ) || "==" }
                                          options={[ {"开始","ilike_bgn"},  {"结束","ilike_end"},
                                                     {"包含字符(且)", "ilike_and"},
                                                     {"包含字符串(或)", "ilike_or"} ]} />
                                   </LeftAddon>
                          </TextInput>
                   {/case}
                   </HGroup>
               {/if}
            {/for}
          </Form>
          <Divider></Divider>

         <div class="mb-4 flex flex justify-end">
           <button  class="btn btn-secondary btn-sm btn-outline"
                  phx-click="reset_search"
            >
             <Cssgg name="sync"  /> 重置
            </button>
         </div>

      </div>
  """
  end

  # 表单 导航菜单
  defp render_table_nav(assigns) do
    ~F"""
    <Navbar nav_layout="fixed" >
      <NavStart class="inline-flex items-center">

        <button :if={ @searchable } class="btn btn-primary btn-sm btn-outline"
           phx-click={toggle_form("#table-filter-form")}>
         <Heroicons name="filter"  /> 筛选
        </button>
        { render_page_size_from(assigns) }

        <div class="ml-4" id="check-results" style="visibility: hidden;">
             <Dropdown pop_pos="end" type="hover" class="mr-4">
                <Label class="btn-primary btn-sm btn-outline">
                    <Heroicons name="truck" size="5" /> <span id="results-content"> 选中了 x 项 </span>
                </Label>
                <Menu   class="dropdown-content p-0 shadow-xl rounded-box w-56" >
                    {#for { key, action } <- @batch_actions }
                    <Item hover_bordered >
                       <a href="#" class="batch_action" phx-click={to_string(key)} data-confirm="Are you sure?" >
                          <Heroicons name={ action.icon }   />  {action.label }
                       </a>
                      </Item>
                    {/for}
                </Menu>
            </Dropdown>
        </div>
      </NavStart>

      <NavCenter>
      </NavCenter>
      <NavEnd>

            <a   :if={@new_url}  href={ @new_url  }  class="btn btn-primary btn-sm btn-outline mr-4"
                >
              <Heroicons name="plus"  /> 新建
            </a>
            <Dropdown pop_pos="end" type="hover" class="mr-4">
                <Label class="btn-primary btn-sm btn-outline">
                    <Heroicons name="download" size="5" /> 导出
                </Label>
                <Menu   class="dropdown-content p-0 shadow-xl rounded-box w-56" >
                    <Item hover_bordered >
                       <a href="#" class="batch_action" phx-click="exports_all"  >
                         <Heroicons name="document-duplicate"   /> 全部
                       </a>
                    </Item>
                </Menu>
            </Dropdown>
            <Dropdown pop_pos="end"  >
                 {!-- 按钮为 indicator, 关键！Label 要添加 btn-ghost btn-circle 样式 --}
                <Label class="btn-primary btn-sm btn-outline">
                    <Heroicons name="cog"  /> 设置
                </Label>
                 {!-- 手动添加 dropdown-content --}
                 <Card shadow="default" class="dropdown-content  mt-3 card card-compact w-52 bg-base-100" >
                   <Body class="max-h-screen overflow-y-auto overscroll-y-auto">

                     { render_view_field_form(assigns) }

                     <Body.Action>
                        <button class="btn btn-primary btn-block">View cart</button>
                     </Body.Action>
                   </Body>
                 </Card>
            </Dropdown>
      </NavEnd>

    </Navbar>
    """
  end

  defp render_page_size_from(assigns) do
    ~F"""
    <div class="ml-4 inline-flex items-center">
      显示
      <Form
            for={:page_size}
            change={"page_size_change"}
            submit={"page_size_submit"}
            opts={autocomplete: "off"}
            >

            <Select  field={:size}  size="sm"  bordered  color="primary"
                 icon_left="variable" control_class="w-32"
                prompt={[key: "分页大小", disabled: true]}
                selected={"#{@per_page}"}
                options={["5","10","20","30","50","100"]}    >

            </Select>
      </Form>
       条
    </div>
    """

  end


  defp render_view_field_form(assigns) do
    ~F"""
    <form id="view_fields"
           phx-change="view_fields_change"
           phx-submit="view_fields_submit"
           autocomplete="off"
           class="w-full"
           >

       {#for  col <- @cols }
         {!-- field 存在才显示到 view field form  --}
         <Checkbox  :if={col.field} name={col.field} field={col.field} opts={ checked: !col.hide } >
           { col.title }
         </Checkbox>
       {/for}

    </form>
   """
  end

  # 字段 不排序，无 列宽
  defp render_th(assigns, %{sort: nil, width: nil } = col) do
    ~F"""
    <th class={col.class}
      >
       {col.title}
    </th>
    """
  end
  # 字段不排序，有 列宽
  defp render_th(assigns,%{sort: nil, width: width } = col) do
    ~F"""
       <th   class={["whitespace-normal","break-all"]
              ++ col.class }
              style={"min-width: #{col.width}"}
          >
           {col.title}
       </th>
    """
  end
  # 字段 排序，无 列宽
  defp render_th(%{sort_field: sort_field, sort_order: sort_order }= assigns,
         %{sort: true, width: nil} = col) do
    ~F"""
    <th class={["cursor-pointer"] ++ col.class }
              phx-click="sort_change"
              phx-value-field={col.field}
              phx-value-order={  set_order(assigns ,col) }
     >
          {col.title}

          {!-- --}
          {#if col.field == sort_field  }
               <Heroicons  :if={ sort_order == "asc"  }     name="sort-descending"  />
               <Heroicons  :if={ sort_order == "desc" }     name="sort-ascending"  />
          {/if}
    </th>
    """
  end
  # 字段 排序，有 列宽
  defp render_th(%{sort_field: sort_field, sort_order: sort_order } = assigns,
                 %{sort: true, width: width } = col) do
    ~F"""
       <th   class={["cursor-pointer", "whitespace-normal","break-all"]
              ++ col.class }
            style={"min-width: #{col.width}"}
              phx-click="sort_change"
              phx-value-field={col.field}
              phx-value-order={ set_order(assigns ,col) }
          >
           {col.title}
           {#if col.field == sort_field  }
               <Heroicons  :if={ sort_order == "asc" }     name="sort-descending"  />
               <Heroicons  :if={ sort_order == "desc" }    name="sort-ascending"  />
          {/if}
       </th>
    """
  end

  #
  defp  set_order(assigns, col ) do
     case assigns.sort_field == col.field do
       true ->  assigns.sort_order
       false -> nil
     end
  end


  # 切换 标签上的 style ="display : none"  和 style ="display : block"
  defp toggle_form(js \\ %JS{}, selector) do
    js
    |> JS.toggle(to: selector, in: "fade-in", out: "fade-out", display: "block")
  end

#  defp toggle_check(js \\ %JS{}, selector) do
#    js
#    |> JS.set_attribute({"checked", "true"}, to: selector)
#  end


  # %{@assigns | filters: [ {:read_count, "in" , [80, 90]  }  ]}
  def get_filter_value( %{filters: filters} = assigns,  field ) do

#    IO.puts "get_filter_value field:  #{inspect field}"
#    IO.inspect filters

    filter =
      filters
      |> Enum.filter(fn { f, op, value} ->
        to_string(f) ==  field
      end)
      |> Enum.at(0)


    value= case   filter do
      nil -> ""
      _ -> elem(filter,2)
    end

    case is_list(value)  do
      true -> Enum.join(value, ",")
      _ -> value
    end
  end

  # %{@assigns | filters: [ {:read_count, "in" , [80, 90]  }  ]}
  defp get_filter_op(%{filters: filters} =  assigns,  field ) do
    filter =
      filters
      |> Enum.filter(fn { f, op, value} ->
        to_string(f) ==  field
      end)
      |> Enum.at(0)

    # filter:  {:read_count, "in" , [80, 90]  }
    case   filter do
      nil -> "=="
      _ -> elem(filter,1)
    end

  end

end