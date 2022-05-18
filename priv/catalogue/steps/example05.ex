defmodule SelphiDaisy.Steps.Example05 do
  @moduledoc """
  Steps 组件.
  ready 使用 Steps组件颜色，
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Steps,
      height: "400px",
      title: " With data-content ",
      direction: "vertical"

  alias   SelphiDaisy.Steps.Step

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <Steps color="secondary">
        {!-- ready=true 使用  Steps 颜色 --}
        <Step ready  data_content="?"  >step 1</Step>
        <Step ready  data_content="!"  >step 2</Step>
        <Step   data_content="✓"  >step 3</Step>
        {!-- ready=false 可以设置 step颜色 --}
        <Step class="step-accent"  data_content="✕"  >step 4</Step>
        <Step class="step-info"  data_content="★"  >step 5</Step>
        <Step class="step-success"  data_content=""  >step 6</Step>
        <Step class="step-warning"  data_content="●"  >step 7</Step>
        <Step class="step-error"  data_content="𝜓"  >step 8</Step>
      </Steps>
    </div>
    """
  end

end