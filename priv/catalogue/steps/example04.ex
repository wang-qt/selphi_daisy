defmodule SelphiDaisy.Steps.Example04 do
  @moduledoc """
  Steps 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Steps,
      height: "400px",
      title: " responsive (vertical on small screen, horizontal on large screen)",
      direction: "vertical"

  alias   SelphiDaisy.Steps.Step

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Steps class="steps-vertical md:steps-horizontal">
        <Step ready     label="Register"  />
        <Step ready     label="Choose plan" />
        <Step label="Purchase" />
        <Step>Jhon Smith</Step>
      </Steps>
    </div>
    """
  end

end