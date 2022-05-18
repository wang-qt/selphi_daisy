defmodule SelphiDaisy.ImageMask do
  @moduledoc """
  本组件生成带mask的图片，演示了SelphiDaisy.SurfaceDaisyui.Mask 宏的使用。

  """
  use Surface.Component

  @size_base_values ~w(8 10 12 14 16 20 24 32 40)

  @doc "图片url地址"
  prop src, :string,  required: true

  @doc "头像大小，默认 12，48px"
  prop size, :string, default: "12", values: @size_base_values

  # 定义 prop mask 和 mask_class()函数, 使用 macro 简化mask 类使用
  use SelphiDaisy.Mask

  @doc "使用在最外层 .avatar 元素上 "
  prop class, :css_class, default: []


  def render(assigns) do
    ~F"""
    <img
       src={@src}
       class={ mask_class(assigns) ++ size_class(assigns) ++ @class }>
    """
  end

  defp size_class(assigns = %{size: size}) do
    case size do
      "8" -> ["w-8","h-8"]
      "10" -> ["w-10","h-10"]
      "12" -> ["w-12","h-12"]
      "14" -> ["w-14","h-14"]
      "16" -> ["w-16","h-16"]
      "20" -> ["w-20","h-20"]
      "24" -> ["w-24","h-24"]
      "32" -> ["w-32","h-32"]
      "40" -> ["w-40","h-40"]
    end
  end

end