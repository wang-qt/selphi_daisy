defmodule SelphiDaisy.Tabs.Example09 do
  @moduledoc """
  Tabs 组件 Bordered样式，图标.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Tabs,
      height: "500px",
      title: " Tabs 通过slot 添加内容",
      direction: "vertical"

  alias  SelphiDaisy.Tabs.{Tab,TabLabel}
  alias SelphiDaisy.Heroicons

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-sm flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Tabs id="tabs-1" bordered class="mt-4">
        <Tab   label="Item 1" icon="home">
         tab content 2
        </Tab>
        <Tab   label="Item 2"  icon="chart-pie" indicator="99+"> tab content 2 </Tab>
        <Tab   label="Item 3"  icon="chart-bar" > tab content 3 </Tab>
      </Tabs>
    </div>
    """
  end

end