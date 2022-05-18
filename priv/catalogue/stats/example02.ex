defmodule SelphiDaisy.Stats.Example02  do
  @moduledoc """
  Stats 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Stats,
      height: "300px",
      title: " Stat with icons or image ",
      direction: "vertical"

  alias     SelphiDaisy.Stats.{Stat,Figure,Title,Value,Desc,Actions}
  alias  SelphiDaisy.Heroicons
  alias  SelphiDaisy.Avatar

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Stats>
          <Stat>
             <Figure class="text-primary"><Heroicons  name="heart" size="10"   /></Figure>
             <Title>Total Likes</Title>
             <Value class="text-primary">25.6K</Value>
             <Desc>21% more than last month</Desc>
          </Stat>
          <Stat>
             <Figure class="text-secondary"><Heroicons  name="currency-euro" size="10"   /></Figure>
             <Title>Page Views</Title>
             <Value class="text-secondary">2.6M</Value>
             <Desc>21% more than last month</Desc>
          </Stat>
          <Stat>
             <Figure class="text-secondary">
               <Avatar size="16" indicator="online" >
                  <img src="https://api.lorem.space/image/face?hash=28212">
               </Avatar>
             </Figure>
             <Title>Tasks done</Title>
             <Value >86%</Value>
             <Desc class="text-secondary">31 tasks remaining</Desc>
          </Stat>


      </Stats>
    </div>
    """
  end


end