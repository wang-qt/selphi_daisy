defmodule SelphiDaisy.Tabs.Example07 do
  @moduledoc """
  Tabs 组件 Bordered样式，图标.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Tabs,
      height: "300px",
      title: " Tabs 通过slot 添加 图标和文字？？？",
      direction: "vertical"

  alias  SelphiDaisy.Tabs.{Tab,TabLabel}
  alias SelphiDaisy.Heroicons

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-start justify-center gap-2 overflow-x-hidden">
      <Tabs id="tabs-1" bordered>
        <Tab   label="Item 1" icon="home">
            tab content 1
        </Tab>
        <Tab   label="Item 2"  icon="chart-pie" > tab content 2 </Tab>
        <Tab   label="Item 3"  icon="chart-bar" > tab content 3 </Tab>
      </Tabs>
    </div>
    """
  end

end