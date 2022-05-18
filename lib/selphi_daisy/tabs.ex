defmodule SelphiDaisy.Tabs do
  @moduledoc """
  Tab  组件，样式 by https://daisyui.com/components/tab/
  说明:
  1. daisyui 的tab样式只有tab的导航部分，tab内容区没有，借鉴 tealcms 的样式,自己开发。
  2. daisyui只有css，无法实现tab点击效果，需要自己开发。
  开发思路
  1. 不使用js(jqyery,alpinejs,原声js等)。
  2. tabs是状态组件，接收点击事件，切换tab
  3. 内容区主要通过 css active 类来切换内容区显示/隐藏.
  4. 导航部分切换，也是通过 daisyui 的 tab-active类，显示选中效果。

  使用方式, Tab的slot为tab内容区。导航标签/icon等，通过属性设置。
  目前 Tab slot添加 Label和icon 有问题？？？？
  ```
   <Tabs id="tabs-1">
      <Tab id="item-1" label="Item 1" icon="home"> tab content </Tab >  //有icon
      <Tab id="item-2" label="Item 2"  ><Card /></Tab > //有icon
      <Tab id="item-3" label="Item 3"  ><Table /></Tab >
      <Tab id="item-4" label="Item 4"  ><div>... </div></Tab >
      <Tab id="item-5" label="Item 5"  visible=false ><div>... </div> </Tab > //隐藏tab
      <Tab id="item-6" label="Item 6"  disabled ><div>... </div></Tab >  //显示，但不能点击
   </Tabs>
  ```

  - tabs	`Component`	Container of tab items
  - tab	`Component`	A tab item
  - tab-active	`Modifier`	For the active tab
  - tab-bordered	`Modifier`	Adds bottom border to tab item
  - tab-lifted	`Modifier`	Adds lifted style to tab item
  - tabs-boxed	`Modifier`	Adds a box style to tabs container
  - tab-xs	`Responsive`	Shows tab in extra small size
  - tab-sm	`Responsive`	Shows tab in small size
  - tab-md	`Responsive`	Shows tab in medium (default) size
  - tab-lg	`Responsive`	Shows tab in large size
  """
  use Surface.LiveComponent
  alias SelphiDaisy.Heroicons
  alias SelphiDaisy.Indicator


  @size_values ~w(xs sm md lg)

  @doc " tab-bordered 样式"
  prop bordered, :boolean

  @doc "tab-lifted 样式"
  prop lifted, :boolean

  @doc "tab-boxed 样式"
  prop boxed, :boolean

  @doc "tab-boxed 样式"
  prop size, :string, default: "md", values: @size_values


  @doc "状态变量，当前active tab项索引"
  data active_tab, :integer

  @doc "父组件切换tab，目标索引"
  data set_active_tab, :integer

  @doc "The tabs to display"
  slot tabs, required: true

  # 父组件 切换 tab
  def update(%{set_active_tab: set_active_tab} = assigns, socket) do
    IO.puts "parent update called!"

    socket =
      socket
      |> assign(assigns)
      |> assign(:active_tab, set_active_tab)
      |> assign(:set_active_tab, nil)

    {:ok, socket}
  end

  # 初始 显示第一个 visible= true的tab
  def update(%{tabs: tabs} = assigns, socket) do
    IO.puts "slot update called!"

    socket =
      socket
      |> assign(assigns)
      |> assign(:active_tab, Enum.find_index(tabs, & &1.visible))

    {:ok, socket}
  end

  def update(assigns, socket) do
    IO.puts "default update called!"
    {:ok, assign(socket, assigns)}
  end





  def render(assigns) do
    ~F"""
    <div class="w-full">
      <nav class={["tabs", "tabs-boxed": @boxed]} >
        <ul>
          <li
            :for={{tab, index} <- Enum.with_index(@tabs), tab.visible}
            class={[
                  "tab",
                  "indicator": tab.indicator,
                  "tab-active": @active_tab == index,
                  "tab-bordered": @bordered ,
                  "tab-lifted": @lifted
                 ] ++ size_class(assigns)}
            disabled={tab.disabled}
          >
            <Indicator :if={tab.indicator}  color="secondary">{tab.indicator}</Indicator>
            <a :on-click="tab_click" phx-value-index={index}>
              <span :if={tab.icon} >
                <Heroicons  name={tab.icon} />
              </span>
              <span>{tab.label}</span>
            </a>
          </li>
        </ul>
      </nav>
      <section class="tab-content mt-2" style="overflow: hidden;">
        <div
          :for={{tab, index} <- Enum.with_index(@tabs)}
          class={["tab-content__pane", "active": tab.visible && @active_tab == index]}
        >
          <#slot name="tabs" index={index}/>
        </div>
      </section>
    </div>
    """
  end


  defp size_class(assigns = %{size: size}) do
    case size do
      "xs" -> ["tab-xs"]
      "sm" -> ["tab-sm"]
      "lg" -> ["tab-lg"]
      _ -> []
    end
  end



  # API
  # Tabs 父组件调用 Tabs.set_tab("Tabs-1",2)，来切换tab
  def set_tab(id, index) do
    send_update(__MODULE__, id: id, set_active_tab: index)
  end

  # 单击切换tab item
  def handle_event("tab_click", %{"index" => index_str}, socket) do
    index = String.to_integer(index_str)
    {:noreply, assign(socket, active_tab: index)}
  end

end