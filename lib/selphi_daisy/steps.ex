defmodule SelphiDaisy.Steps do
  @moduledoc """
  Steps  Steps can be used to show a list of steps in a process.
  by https://daisyui.com/components/steps/
  Steps 组件显示步骤状态。无状态组件

  设计两种使用方法,类似Breadcrumb：
  1. 给 steps 设置输入列表，每项为map <Steps data={@list} />.
  使用简单，但不够灵活
  ```
  data = [
    %{ ready: true,  label: "Register",  data_content: "?" },
    %{ ready: true , label: "Choose plan", data_content: "!"},
    %{ ready: false ,label: "Purchase"}
    %{ ready: false, label: "Receive Product"}
  ]
  2. 使用 Steps.Step，
  ```
    <Steps>
      <Step ready     label="Register" data_content="!" ></Step>
      <Step ready    label="Choose plan"  data_content="!" ></Step>
      <Step ready   label="Purchase"></Step>
      <Step>Jhon Smith</Step>
    </Steps>
  ```

  - steps	`Component`	Container of step items
  - step	`Component`	A step item
  - step-primary	`Modifier`	Adds `primary` color to step
  - step-secondary	`Modifier`	Adds `secondary` color to step
  - step-accent	`Modifier`	Adds `accent` color to step
  - step-info	`Modifier`	Adds `info` color to step
  - step-success	`Modifier`	Adds `success` color to step
  - step-warning	`Modifier`	Adds `warning` color to step
  - step-error	`Modifier`	Adds `error` color to step
  - steps-vertical	`Responsive`	makes `steps` vertical
  - steps-horizontal	`Responsive`	makes `steps` horizontal
  """
  use Surface.Component

  # 完成步骤颜色
  @color_values ~w(neutral primary  secondary accent info success warning error )


  @doc """
  手动输入 data 参数列表，data 存在则忽略slot. eg.
  """
  prop data, :list, default: []

  @doc """
  完成步骤颜色，不设置默认为 primary.使用方法 <Steps  color="primary" />
  """
  prop color, :string, default: "primary", values: @color_values

  @doc "其他样式,eg. steps-vertical lg:steps-horizontal "
  prop class, :css_class, default: []

  @doc "The step items to display"
  slot steps

  # 使用 data
  def render(assigns = %{data: [_ | _]}) do
    ~F"""
    <ul class={["steps"] ++ @class}>
       {#for item <- @data}
         <li
            data-content={ !is_nil(item[:data_content]) && item.data_content}
            class={["step"] ++ color_class(item, @color) }
         >{item.label}</li>
       {/for}
    </ul>
    """
  end

  # 使用 slot ,填写 Step 组件
  def render(assigns) do
    ~F"""
    <ul class={["steps"] ++ @class}>
        <Context put={__MODULE__, color: @color}>
           {#for {_, index} <- Enum.with_index(@steps)}
              <#slot name="steps" index={index} />
            {/for}
        </Context>
    </ul>
    """
  end

  defp color_class(item = %{ready: true}, color) do
    case color do
      "neutral" -> ["step-neutral"]
      "primary" -> ["step-primary"]
      "secondary" -> ["step-secondary"]
      "accent" -> ["step-accent"]
      "info" -> ["step-info"]
      "success" -> ["step-success"]
      "warning" -> ["step-warning"]
      "error" -> ["step-error"]
      _ -> []
    end
  end
  defp color_class(_item, color) do
    []
  end

end