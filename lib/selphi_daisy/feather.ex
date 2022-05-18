defmodule SelphiDaisy.Feather do
  @moduledoc """
  Feather svg icon component.
  使用 `icons/feather-sprite.svg`

  https://feathericons.com
  """

  use Surface.Component

  @size_base_values ~w(4 5 6 7 8 9 10 11 12 auto)

  @stroke_width ~w(0 1 2)


  @doc "图标名称,参见 https://feathericons.com 获取图标名称"
  prop name, :string, required: true

  @doc "图标大小，默认 `h-6 w-6` 24px"
  prop size, :string, default: "6", values: @size_base_values

  @doc "是否填充：用于设置 SVG 元素填充(fill)样式的功能类,默认不填充"
  prop type, :string, default: "stroke", values: ["stroke","fill"]

  @doc "线条厚度：当type 为`stroke`时有效， 设置 SVG 元素线条厚度,默认为 0 "
  prop stroke_width, :string, default: "1", values: @stroke_width

  @doc "其他tw类，eg. 'mr-1'设置距离， 设置为当前的文本颜色`text-purple-600`，配合 `stroke-current`，改变图标颜色 "
  prop class, :css_class, default: []

  def render(assigns) do
    ~F"""
    <svg xmlns="http://www.w3.org/2000/svg"
      class={ ["inline-block"] ++
              svg_classes(assigns) ++ @class }

      {...set_fill_prop(assigns)}
      viewBox="0 0 24 24"
    >
      <use href={"/icons/feather-sprite.svg##{@name}"} />
    </svg>
    """
  end

  # type为stroke才填 fill="none", 否则不出现 fill 属性
  def set_fill_prop(assigns = %{type: type} ) do
    case type   do
      "stroke" -> [ fill: "none"]
      _ -> []
    end
  end
  defp svg_classes(assigns) do
    svg_size(assigns) ++ svg_type(assigns) ++ svg_stroke_width(assigns)
  end

  defp svg_stroke_width(%{stroke_width: stroke_width}) do
    case stroke_width do
      "0" -> ["stroke-0"]
      "1" -> ["stroke-1"]
      "2" -> ["stroke-2"]
      _ -> []

    end
  end
  defp svg_type(%{type: type}) do
    case type do
      "stroke" -> ["stroke-current"]
      "fill" -> ["fill-current"]
      _ -> []
    end
  end

  defp svg_size(%{size: size}) when size in @size_base_values do
    case size do
      "4" -> ["w-4", "h-4"]
      "5" -> ["w-5", "h-5"]
      "6" -> ["w-6", "h-6"]
      "7" -> ["w-7", "h-7"]
      "8" -> ["w-8", "h-8"]
      "9" -> ["w-9", "h-9"]
      "10" -> ["w-10", "h-10"]
      "11" -> ["w-11", "h-11"]
      "12" -> ["w-12", "h-12"]
      "auto" -> ["w-auto", "h-auto"]
      _ -> []
    end
  end


end