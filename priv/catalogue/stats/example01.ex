defmodule SelphiDaisy.Stats.Example01 do
  @moduledoc """
  Stats 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Stats,
      height: "300px",
      title: " stat",
      direction: "vertical"

  alias     SelphiDaisy.Stats.{Stat,Figure,Title,Value,Desc,Actions}

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Stats>
          <Stat>
             <Title>Total Page Views</Title>
             <Value>89,400</Value>
             <Desc>21% more than last month</Desc>
          </Stat>
      </Stats>
    </div>
    """
  end


end