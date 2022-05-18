defmodule SelphiDaisy.Steps.Example01 do
  @moduledoc """
  Steps 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Steps,
      height: "150px",
      title: " Steps  使用 slot",
      direction: "vertical"

  alias   SelphiDaisy.Steps.Step

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Steps >
        <Step ready     label="Register" />
        <Step ready     label="Choose plan" />
        <Step label="Purchase" />
        <Step>Jhon Smith</Step>
      </Steps>
    </div>
    """
  end

end