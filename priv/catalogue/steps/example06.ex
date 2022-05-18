defmodule SelphiDaisy.Steps.Example06 do
  @moduledoc """
  Steps 组件.
  ready 使用 Steps组件颜色，
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Steps,
      height: "400px",
      title: " With scrollable wrapper ",
      direction: "vertical"

  alias   SelphiDaisy.Steps.Step

  def render(assigns) do
    ~F"""
    <div class=" h-full flex min-h-[6rem] min-w-[20rem] max-w-4xl flex-wrap items-center justify-center gap-2 overflow-x-hidden">
      <div class="overflow-x-auto">
        <Steps color="secondary">
           <Step  class="step-primary">start</Step>
           <Step  class="step-secondary">step 2</Step>
           <Step  class="step-secondary">step 3</Step>
           <Step  class="step-secondary">step 4</Step>
           <Step   >step 5</Step>
           <Step   class="step-accent">step 6</Step>
           <Step   class="step-accent">step 7</Step>
           <Step   >step 8</Step>
           <Step   >step 9</Step>
           <Step   class="step-error">step 10</Step>
           <Step   class="step-error">step 11</Step>
           <Step   >step 12</Step>
           <Step   class="step-neutral">step 13</Step>
           <Step   class="step-neutral">step 14</Step>
           <Step   >step 15</Step>
           <Step   class="step-warning">step 16</Step>
           <Step   class="step-warning">step 17</Step>
           <Step   >step 18</Step>
           <Step   class="step-info">step 19</Step>
           <Step   class="step-info">step 20</Step>
           <Step   >step 21</Step>
           <Step   >step 22</Step>
           <Step    class="step-success">end</Step>
         </Steps>
       </div>
    </div>
    """
  end

end