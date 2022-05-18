defmodule SelphiDaisy.Stats.Example07  do
  @moduledoc """
  Stats 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Stats,
      height: "250px",
      title: "With custom colors and button ",
      direction: "vertical"

  alias     SelphiDaisy.Stats.{Stat,Figure,Title,Value,Desc,Actions}
  alias  SelphiDaisy.Heroicons
  alias  SelphiDaisy.Avatar

  def render(assigns) do
    ~F"""

    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Stats class="bg-primary text-primary-content ">
          <Stat >
             <Title>Account balance</Title>
             <Value>$89,400</Value>
             <Actions>
                <button class="btn btn-sm btn-success">Add funds</button>
             </Actions>
          </Stat>
          <Stat >
             <Title>Current balance</Title>
             <Value>$89,400</Value>
             <Actions>
                <button class="btn btn-sm">Withdrawal</button>
                <button class="btn btn-sm">deposit</button>
             </Actions>
          </Stat>
      </Stats>
    </div>
    """
  end


end