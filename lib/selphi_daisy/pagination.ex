defmodule SelphiDaisy.Pagination do
  @moduledoc """
  Pagination is a group of buttons that allow the user to navigate between a set of related content.
  by https://daisyui.com/components/pagination/.

  - btn-group	Component	Groups buttons together

  分页包含两种类型：
  1. 客户端分页，一次查询所有数据，点击分页/过滤/排序/查找/分页大小，由前端过滤出显示的数据。
  2. 服务器分页，服务器又包含两种类型
  2.1. 游标分页：不返回记录总长度，只返回游标(hash值)，和是否有下一页标志。使用游标获取下一页/上一页。
  2.2. 知道总长度的分页，返回记录总数，前端产生`分页号`，服务器根据页号获取相应的记录。
       每次请求会导致服务器重新查询数据。

  Pagination 组件思路，主要考虑服务器分页2.2 场景：
  1. 有状态组件，处理`分页`点击事件
  2. 点击`分页号`后，消息发送到后台，携带目标`分页号`。
  3. Pagination 改变 当前分页号状态变量，通知liveview 重新加载新分页数据.后端添加分页库依赖，简化分页查询开发。
  4. liveview 和 Pagination 要设计消息通讯消息和参数
  """
  use Surface.LiveComponent
  alias SelphiDaisy.Button
  alias SelphiDaisy.Heroicons

  # mobile按钮大小，不设置默认为 md
  @size_values  ~w(lg md  sm  xs  )

   # 按钮类型，属性互斥，只能出现一个
  @color_values ~w(neutral primary  secondary accent info success warning error ghost link )

  # mobile 形状，不设置默认为 矩形
  @shape_values ~w(circle square)


  # 外观属性
  @doc """
  mobile按钮大小，响应式属性，可以通过 class 动态修改. eg. sm:btn-sm md:btn-md lg:btn-lg
  使用方法 <Button  size="lg" /> ,或不设置，使用按钮默认大小(md)
  """
  prop size, :string, default: "md", values: @size_values

  @doc """
  按钮颜色，不设置默认为 neutral.使用方法 <Button  color="primary" />
  """
  prop color, :string, default: "neutral", values: @color_values

  @doc "btn-outline 可以和 color 同时出现，ghost link 一般不设置outline.使用方法 <Button  outline />"
  prop outline, :boolean

  @doc """
  mobile按钮形状，响应式属性，可以通过 class 动态修改. eg. sm:btn-square
  使用方法 <Button  shape="circle" />,或不设置，使用按钮默认形状(矩形)
  circle 只对第一个和最后一个有效，因为 btn-group 会去掉子元素的圆角。
  """
  prop shape, :string, values: @shape_values


  # 分页算法属性
  @doc "记录总数"
  prop total, :integer, required: true

  @doc """
  当前分页大小。 根据 total 和 cur_size 渲染分页按钮。
  取值为一般为 ~w(10 15 25 50 100)
  """
  prop pg_size, :integer, required: true


  @doc "当前分页号"
  prop cur_page, :integer, default: 1

  @doc "当前分页号"
  data end_page, :integer




  def update(assigns, socket) do
    IO.inspect assigns
    total = to_int(assigns.total)
    pg_size = to_int(assigns.pg_size)
    end_page = ceil( total / pg_size )
    IO.inspect end_page

    {:ok,  socket
           |> assign(assigns)  # 设置初始值
           |> assign(:end_page, end_page)
           |> assign( :total,  total )
           |> assign( :pg_size,  pg_size ) }
  end
  defp to_int( value) do
    case is_binary( value) do
      true -> String.to_integer( value)
      _ ->  value
    end
  end


  # 当页数小于10，全部显示 << 1 2 3 4 5 6 7 8 9 10 >>
  def render(assigns = %{end_page: end_page, cur_page: cur_page, pg_size: pg_size }) when end_page <= 10 do
    ~F"""
    <div class="flex flex-col sm:flex-row sm:justify-between items-center ">
      <p>展示从{(cur_page - 1) * pg_size + 1}到{min(cur_page  * pg_size, @total)}项结果, 共{@total}项</p>
      <div  class="btn-group">
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape} click="first_page" disabled={@cur_page == 1} >«</Button>
        {#for i <- 1..end_page }
         <Button size={@size}  color={@color} outline={@outline} shape={@shape} click="cur_page" value={"#{i}"} active={@cur_page == String.to_integer("#{i}")}>{i}</Button>
        {/for}
        <Button size={@size}  color={@color} outline={@outline} shape={@shape}  click="end_page" disabled={@cur_page == end_page} >»</Button>
      </div>
    </div>
    """
  end

  # 当页数>10，当前页<7 时，首部显示8个页 << 1 2 3 4 5 6 7 8 .. 10 11 >>
  def render(assigns = %{end_page: end_page, cur_page: cur_page, pg_size: pg_size }) when end_page > 10 and  (cur_page - 1) < 6 do
    ~F"""
    <div class="flex flex-col sm:flex-row sm:justify-between  items-center">
      <p>展示从{(cur_page - 1) * pg_size + 1}到{min(cur_page  * pg_size, @total)}项结果, 共{@total}项</p>
      <div  class="btn-group">
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape} click="first_page"  disabled={@cur_page == 1} >«</Button>
          {#for i <- 1..8 }
         <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="cur_page" value={"#{i}"} active={@cur_page == String.to_integer("#{i}")}>{i}</Button>
          {/for}
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  disabled> <span>...</span></Button>
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="cur_page" value={"#{end_page - 1}"} active={@cur_page == String.to_integer("#{end_page - 1}")}>{end_page - 1}</Button>
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="cur_page" value={"#{end_page}"} active={@cur_page == String.to_integer("#{end_page}")}>{end_page}</Button>
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="end_page" disabled={@cur_page == end_page}  >»</Button>
      </div>
    </div>
    """
  end
  #  当页数很多时，当前页显示在最中间，左右各3页  << 1 2 ... 4 5 6 7 8 9 10 .. 21 22 >>
  #  and cur_page < end_page - 6
  def render(assigns = %{end_page: end_page, cur_page: cur_page, pg_size: pg_size})
      when end_page > 10 and (cur_page - 1) >= 6 and  (end_page - cur_page) >= 6 do
    ~F"""
    <div class="flex flex-col sm:flex-row sm:justify-between items-center ">
      <p>展示从{(cur_page - 1) * pg_size + 1}到{min(cur_page  * pg_size, @total)}项结果, 共{@total}项</p>
      <div  class="btn-group">
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="first_page" disabled={@cur_page == 1}>«</Button>
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="cur_page"  value="1" >1</Button>
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="cur_page"  value="2" >2</Button>
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  disabled> <span>...</span></Button>
        {#for i <- (cur_page - 3)..(cur_page + 3)  }
         <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="cur_page" value={"#{i}"} active={@cur_page == String.to_integer("#{i}")}>{i}</Button>
        {/for}

        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  disabled> <span>...</span></Button>
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="cur_page" value={"#{end_page - 1}"} active={@cur_page == String.to_integer("#{end_page - 1}")}>{end_page - 1}</Button>
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="cur_page" value={"#{end_page}"} active={@cur_page == String.to_integer("#{end_page}")}>{end_page}</Button>
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="end_page" disabled={@cur_page == end_page} >»</Button>
      </div>
    </div>
    """
  end
  # 当页数>10，当前页离尾页<6 时,尾部显示8个页 << 1 2 ...  11 12 13 14 15 16 17 18 >>
  def render(assigns = %{end_page: end_page, cur_page: cur_page, pg_size: pg_size})
      when end_page > 10 and  (end_page - cur_page) < 6 do
    ~F"""
    <div class="flex flex-col sm:flex-row sm:justify-between items-center ">
      <p>展示从{(cur_page - 1) * pg_size + 1}到{min(cur_page  * pg_size, @total)}项结果, 共{@total}项</p>
      <div  class="btn-group">
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="first_page" disabled={@cur_page == 1}>«</Button>
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="cur_page" value="1" >1</Button>
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="cur_page" value="2" >2</Button>
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  disabled> <span>...</span></Button>
        {#for i <- (end_page - 7)..end_page }
         <Button size={@size}  color={@color} outline={@outline}  shape={@shape}  click="cur_page" value={"#{i}"} active={@cur_page == String.to_integer("#{i}")}>{i}</Button>
        {/for}
        <Button size={@size}  color={@color} outline={@outline}  shape={@shape} click="end_page" disabled={@cur_page == end_page}>»</Button>
      </div>
    </div>
    """
  end

#  def render(assigns) do
#    ~F"""
#    """
#  end



  # <ButtonLink value="css" values={name: "wang", sex: "male", age: 28} click="user_info">value css</ButtonLink>
  # params 格式 %{"age" => "28", "name" => "wang", "sex" => "male", "value" => "css"}
  def handle_event("cur_page", params = %{"value"=> value}, socket) do
    IO.puts "cur_page event!"
    IO.inspect params

    # 向 lv 发送 页码改变事件
    send(self(), {:page_change, String.to_integer(value) })

    {:noreply, assign(socket,:cur_page, String.to_integer(value) )}
  end

  def handle_event("first_page", params, socket) do
    IO.puts "first_page event!"
    IO.inspect params

    # 向 lv 发送 页码改变事件
    send(self(), {:page_change, 1 })

    {:noreply, assign(socket,:cur_page, 1 )}
  end

  def handle_event("end_page", params, socket) do
    IO.puts "end_page event!"
    IO.inspect params

    # 向 lv 发送 页码改变事件
    send(self(), {:page_change, socket.assigns.end_page })

    {:noreply, assign(socket,:cur_page, socket.assigns.end_page )}
  end




end