defmodule SelphiDaisy.Tabs.Example05 do
  @moduledoc """
  Tabs 组件 size 属性.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Tabs,
      height: "500px",
      title: " Tabs lifted size",
      direction: "vertical"

  alias  SelphiDaisy.Tabs.Tab

  def render(assigns) do
    ~F"""
    <div class=" h-full flex flex-wrap min-h-[6rem] min-w-[20rem] w-full   items-start justify-start overflow-x-auto">
      <div class="w-1/3">
        <Tabs id="tabs-1" lifted size="xs" >
          <Tab   label="Item 1"  > tab content 1 </Tab>
          <Tab   label="Item 2"  > tab content 2 </Tab>
          <Tab   label="Item 3"  > tab content 3 </Tab>
        </Tabs>
      </div>
      <div class="w-1/3">
        <Tabs id="tabs-2" lifted size="sm" >
          <Tab   label="Item 1"  > tab content 1 </Tab>
          <Tab   label="Item 2"  > tab content 2 </Tab>
          <Tab   label="Item 3"  > tab content 3 </Tab>
        </Tabs>
      </div>
      <div class="w-1/3">
        <Tabs id="tabs-3" boxed size="md" >
          <Tab   label="Item 1"  > tab content 1 </Tab>
          <Tab   label="Item 2"  > tab content 2 </Tab>
          <Tab   label="Item 3"  > tab content 3 </Tab>
        </Tabs>
      </div>
      <div class="w-1/3">
        <Tabs id="tabs-4" bordered size="lg" >
          <Tab   label="Item 1"  > tab content 1 </Tab>
          <Tab   label="Item 2"  > tab content 2 </Tab>
          <Tab   label="Item 3"  > tab content 3 </Tab>
        </Tabs>
      </div>
    </div>
    """
  end

end