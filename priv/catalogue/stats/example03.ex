defmodule SelphiDaisy.Stats.Example03  do
  @moduledoc """
  Stats 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Stats,
      height: "300px",
      title: " Stat ",
      direction: "vertical"

  alias     SelphiDaisy.Stats.{Stat,Figure,Title,Value,Desc,Actions}
  alias  SelphiDaisy.Heroicons
  alias  SelphiDaisy.Avatar

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Stats>
          <Stat>
             <Figure class="text-primary"><Heroicons  name="tag" size="10"   /></Figure>
             <Title>Downloads</Title>
             <Value>31K</Value>
             <Desc>Jan 1st - Feb 1st</Desc>
          </Stat>
          <Stat>
             <Figure class="text-secondary"><Heroicons  name="adjustments" size="10"   /></Figure>
             <Title>New Users</Title>
             <Value>4,2000</Value>
             <Desc>↗︎ 400 (22%)</Desc>
          </Stat>
          <Stat>
             <Figure class="text-secondary">
               <Heroicons  name="archive" size="10"   />
             </Figure>
             <Title>New Registers</Title>
             <Value>1,200</Value>
             <Desc>↘︎ 90 (14%)</Desc>
          </Stat>


      </Stats>
    </div>
    """
  end


end