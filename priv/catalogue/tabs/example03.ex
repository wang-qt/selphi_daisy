defmodule SelphiDaisy.Tabs.Example03 do
  @moduledoc """
  Tabs 组件 Lifted 样式.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Tabs,
      height: "300px",
      title: " Tabs Lifted",
      direction: "vertical"

  alias  SelphiDaisy.Tabs.Tab

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-start justify-center gap-2 overflow-x-hidden">
      <Tabs id="tabs-1" lifted>
        <Tab   label="Item 1"  > tab content 1 </Tab>
        <Tab   label="Item 2"  > tab content 2 </Tab>
        <Tab   label="Item 3"  > tab content 3 </Tab>
      </Tabs>
    </div>
    """
  end

end