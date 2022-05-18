defmodule SelphiDaisy.Progress do
  @moduledoc """
  进度条. https://daisyui.com/components/progress/

  - progress	`Component`	Progress element
  - progress-primary	`Modifier`	Adds `primary` color
  - progress-secondary	`Modifier`	Adds `secondary` color
  - progress-accent	`Modifier`	Adds `accent` color
  - progress-info	`Modifier`	Adds `info` color
  - progress-success	`Modifier`	Adds `success` color
  - progress-warning	`Modifier`	Adds `warning` color
  - progress-error	`Modifier`	Adds `error` color

  """
  use Surface.Component

  @colors ~w(default primary secondary accent info success warning error)

  @doc "颜色"
  prop  color, :string ,default: "default", values: @colors

  @doc "进度值 0 - 100，整数"
  prop  value, :string ,default: "0"

  @doc "其他tw类，eg. 宽度 w-56 "
  prop class, :css_class, default: []

  def render(assigns) do
    ~F"""
    <progress
        class={["progress","w-full"] ++ color_class(assigns) ++ @class }
        value={@value}
        max="100"></progress>
    """
  end

  defp color_class(assigns = %{color: color}) do
    case color do
      "default" -> []
      "primary" -> ["progress-primary"]
      "secondary" -> ["progress-secondary"]
      "accent" -> ["progress-accent"]
      "info" -> ["progress-info"]
      "success" -> ["progress-success"]
      "warning" -> ["progress-warning"]
      "error" -> ["progress-error"]
    end
  end


end