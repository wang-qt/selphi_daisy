defmodule SelphiDaisy.Indicator do
  @moduledoc """
  Indicators are used to place an element on the corner of another element.
  as defined by https://daisyui.com/components/indicator/

  Indicator 的父容器一般是 <div>，在tab时是 <a>. 在使用 Indicator 组件时，
  首先在父容器上添加 indicator 类，然后在slot中调用 Indicator组件。

  - indicator	`Component`	Container element
  - indicator-item	`Component`		will be placed on the corner of sibling
  - indicator-start	`Modifier`	align horizontally to the left
  - indicator-center	`Modifier`	align horizontally to the center
  - indicator-end	`Modifier`	align horizontally to the right (default)
  - indicator-top	`Modifier`	align vertically to top (default)
  - indicator-middle	`Modifier`	align vertically to middle
  - indicator-bottom	`Modifier`	align vertically to bottom
  """
  use Surface.Component

  @colors ~w( neutral  primary secondary accent info success warning error)

  @h_pos_values ~w(start center  end)
  @v_pos_values ~w(top middle  bottom)

  @doc "背景和文本颜色"
  prop color, :string, default: "neutral", values: @colors

  @doc "水平位置，不设置默认为end"
  prop h_pos, :string,  values: @h_pos_values

  @doc "垂直位置，不设置默认为top"
  prop v_pos, :string,  values: @v_pos_values

  @doc "slot 为button时不能添加 badge类，使用方法 <Indicator  is_button />"
  prop is_button, :boolean


  @doc "其他tw类, eg. footer-center  "
  prop class, :css_class, default: []


  @doc """
  可以是button，一般为字符串, 如果slot为button，需要设置 is-button 属性
  """
  slot default

  def render(assigns) do
    ~F"""
     <span class={["indicator-item","badge": !@is_button  ]
                    ++ color_class(assigns)
                    ++ pos_class(assigns) ++ @class}>
       <#slot />
     </span>
    """
  end

  defp pos_class(assigns) do
    h_pos_class(assigns) ++ v_pos_class(assigns)
  end
  defp h_pos_class(assigns = %{h_pos: h_pos}) do
    case h_pos do
      "start" -> ["indicator-start"]
      "center" -> ["indicator-center"]
      "end" -> ["indicator-end"]
      _ -> []
    end
  end
  defp v_pos_class(assigns = %{v_pos: v_pos}) do
    case v_pos do
      "top" -> ["indicator-top"]
      "middle" -> ["indicator-middle"]
      "bottom" -> ["indicator-bottom"]
      _ -> []
    end
  end

  defp color_class(assigns = %{color: color}) do
    case color do
      "neutral" -> []
      "primary" -> ["badge-primary"]
      "secondary" -> ["badge-secondary"]
      "accent" -> ["badge-accent"]
      "info" -> ["badge-info"]
      "success" -> ["badge-success"]
      "warning" -> ["badge-warning"]
      "error" -> ["badge-error"]
      _ -> []
    end
  end

end