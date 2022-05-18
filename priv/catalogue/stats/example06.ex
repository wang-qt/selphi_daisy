defmodule SelphiDaisy.Stats.Example06  do
  @moduledoc """
  Stats 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Stats,
      height: "400px",
      title: "Responsive (vertical on small screen, horizontal on large screen)",
      direction: "vertical"

  alias     SelphiDaisy.Stats.{Stat,Figure,Title,Value,Desc,Actions}
  alias  SelphiDaisy.Heroicons
  alias  SelphiDaisy.Avatar

  def render(assigns) do
    ~F"""

    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Stats class="stats-vertical sm:stats-horizontal">
          <Stat >
             <Title>Downloads</Title>
             <Value>31K</Value>
             <Desc>From January 1st</Desc>
          </Stat>
          <Stat >
             <Title>New Users</Title>
             <Value>4,2000</Value>
             <Desc>↗︎ 400 (22%)</Desc>
          </Stat>
          <Stat>
             <Title>New Registers</Title>
             <Value>1,200</Value>
             <Desc>↘︎ 90 (14%)</Desc>
          </Stat>
      </Stats>
    </div>
    """
  end


end