defmodule SelphiDaisy.Steps.Step do
  @moduledoc """
  """
  use Surface.Component, slot: "steps"


  @doc "step是否为ready状态"
  prop ready, :boolean

  @doc "step text, slot不存在时使用"
  prop label, :string

  @doc "图标文字"
  prop data_content, :string

  @doc "单独设置step的颜色等样式, eg. step-success step-warning step-error "
  prop class, :css_class, default: []

  @doc """
   slot存在则忽略 label
  """
  slot default

  def render(assigns) do
    ~F"""
    <Context get={SelphiDaisy.Steps, color: color}>
         <li
            data-content={@data_content}
            class={["step"] ++ color_class(assigns, color) ++ @class}
         >
             <#slot> {@label} </#slot>
         </li>
    </Context>
    """
  end

  #  @color_values ~w(neutral primary  secondary accent info success warning error )
  defp color_class(assigns = %{ready: true}, color) do
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
  defp color_class(_assigns, _color) do
    []
  end


end