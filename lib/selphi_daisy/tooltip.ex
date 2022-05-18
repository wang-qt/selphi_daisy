defmodule SelphiDaisy.Tooltip do
  @moduledoc """
  Tooltip组件，鼠标悬浮时，显示提示信息. https://daisyui.com/components/tooltip/


  - tooltip	`Component`	Container element
  - tooltip-open	`Component`	Force open tooltip
  - tooltip-bottom	`Modifier`	Put tooltip on bottom
  - tooltip-left	`Modifier`	Put tooltip on left
  - tooltip-right	`Modifier`	Put tooltip on right
  - tooltip-primary	`Modifier`	Adds `primary` color to tooltip
  - tooltip-secondary	`Modifier`	Adds `secondary` color to tooltip
  - tooltip-accent	`Modifier`	Adds `accent` color to tooltip
  - tooltip-info	`Modifier`	Adds `info` color to tooltip
  - tooltip-success	`Modifier`	Adds `success` color to tooltip
  - tooltip-warning	`Modifier`	Adds `warning` color to tooltip
  - tooltip-error	`Modifier`	Adds `error` color to tooltip
  """
  use Surface.Component

  @type_values ~w(hover force-open)

  @pop_pos_values ~w(top left right bottom)

  @color_values ~w(default primary secondary accent info success warning error)

  @doc "Tooltip 展开方式。 hover: 鼠标悬浮, force-open: 始终打开."
  prop  type, :string, default: "hover", values: @type_values

  @doc "内容位置："
  prop  pop_pos, :string, default: "top", values: @pop_pos_values

  @doc "内容位置："
  prop  color, :string, default: "default", values: @color_values

  @doc "提示内容"
  prop  content, :string,  required: true

  @doc "其他tw类"
  prop class, :css_class, default: []

  @doc "slot可以添加 button 等"
  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class={[
          "tooltip",
          "tooltip-open": @type == "force-open"
        ] ++ pop_pos_class(assigns)
          ++ color_class(assigns)
          ++ @class}
         data-tip={@content}>
       <#slot />
    </div>
    """
  end

  defp pop_pos_class(assigns = %{pop_pos: pop_pos}) do
    case pop_pos do
      "top" -> []
      "left" -> ["tooltip-left"]
      "right" -> ["tooltip-right"]
      "bottom" -> ["tooltip-bottom"]
      _ -> []
    end
  end

  defp color_class(assigns = %{color: color}) do
    case color do
      "default" -> []
      "primary" -> ["tooltip-primary"]
      "secondary" -> ["tooltip-secondary"]
      "accent" -> ["tooltip-accent"]
      "info" -> ["tooltip-info"]
      "success" -> ["tooltip-success"]
      "warning" -> ["tooltip-warning"]
      "error" -> ["tooltip-error"]
      _ -> []
    end
  end


end