defmodule SelphiDaisy.Avatar do
  @moduledoc """
  A Avatar, Avatar.Placeholder, Avatar.Group  组件。
  Group 可以包含 Avatar 和 Placeholder。

  as defined by https://daisyui.com/components/avatar

  - avatar	`Component`	Container element
  - avatar-group	`Component`	Container for grouping multiple avatars
  - online	`Modifier`	shows a green dot as online indicator
  - offline	`Modifier`	shows a gray dot as online indicator
  - placeholder	`Modifier`	to show some letters as avatar placeholder

  在 Avatar.Group group 中 使用 avatar，只有 size
  """
  use Surface.Component

  @size_base_values ~w(8 10 12 14 16 20 24 32)

  @round_base_values ~w(rounded rounded-xl rounded-full )

#  @mask_base_values ~w(none squircle heart hexagon  decagon pentagon diamond square circle parallelogram star triangle half-1 half-2)

  @doc "头像大小，默认 12，48px"
  prop size, :string, default: "12", values: @size_base_values

  @doc "背景色，默认为 bg-base-300，颜色值详见 https://daisyui.com/docs/colors。根据Avatar的父组件设置。"
  prop  bg_color, :string, default: "bg-base-300"

  @doc "圆角大小，如果设置了mask 或 has_ring=true 或 设置了 indicator ，则round属性不起作用，自动为 rounded-full"
  prop round, :string, default: "rounded", values: @round_base_values

  @doc "是否有ring，如果为true则设置 ring ring-primary ring-offset-base-100 ring-offset-2 样式，
  如果需要自定义ring，请直接使用 ring_class 来设置ring。
  如果 has_ring为 true，则自动添加 rounded-full，忽略 round 属性  "
  prop has_ring, :boolean, default: "false"

  @doc "online或 offline 标志，如果设置了 indicator，则自动添加 rounded-full，忽略 round 属性 "
  prop indicator, :string, default: "none", values: ["none","online","offline"]

#  @doc "部分mask样式，详见mask组件。如果设置了 mask，忽略 round 属性"
#  prop mask, :string, default: "none", values: @mask_base_values

  # 定义 prop mask 和 mask_class()函数, 使用 macro 简化mask 类使用
  use SelphiDaisy.Mask

  @doc "使用在最外层 .avatar 元素上 "
  prop class, :css_class, default: []

  @doc "使用在 .avatar > div 内部元素上, 设置头像 ring "
  prop ring_class, :css_class

  @doc "头像 <img> "
  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class={["avatar"] ++ indicator_class(assigns) ++ @class }>
      <div class={ size_class(assigns)
                  ++ round_class(assigns)
                  ++ bg_color_class(assigns)
                  ++ mask_class(assigns)
                  ++ ring_class(assigns) }>
         <#slot />
      </div>
    </div>
    """
  end

  defp indicator_class(assigns = %{indicator: indicator} ) do
     case indicator do
       "none" -> []
       "online" -> ["online"]
       "offline" -> ["offline"]
     end
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
    end
  end

  defp round_class(assigns = %{ has_ring: has_ring}) when has_ring == "true" do
    ["rounded-full"]
  end
  defp round_class(assigns = %{ indicator: indicator}) when indicator != "none" do
    ["rounded-full"]
  end
  defp round_class(assigns = %{ mask: mask}) when mask != "none" do
    []
  end
  defp round_class(assigns = %{ round: round}) do
    [round]
  end

  defp bg_color_class(assigns = %{bg_color: bg_color}) do
    [bg_color]
  end


#  defp mask_class(assigns = %{mask: mask}) when mask != "none" do
#    case mask do
#      "squircle" -> ["mask","mask-squircle"]
#      "heart" -> ["mask","mask-heart"]
#      "hexagon" -> ["mask","mask-hexagon"]
#      "decagon" -> ["mask","mask-decagon"]
#      "pentagon" -> ["mask","mask-pentagon"]
#      "diamond" -> ["mask","mask-diamond"]
#      "square" -> ["mask","mask-square"]
#      "circle" -> ["mask","mask-circle"]
#      "parallelogram" -> ["mask","mask-parallelogram"]
#      "star" -> ["mask","mask-star"]
#      "triangle" -> ["mask","mask-triangle"]
#      "half-1" -> ["mask","mask-half-1"]
#      "half-2" -> ["mask","mask-half-2"]
#    end
#  end
#  defp mask_class(assigns )  do
#    []
#  end

  defp ring_class(assigns = %{has_ring: has_ring }) when has_ring == "true" do
   case assigns do
     %{ring_class: nil} -> ["ring", "ring-primary", "ring-offset-base-100", "ring-offset-2"]
     %{ring_class: ring_class} -> ring_class
   end
  end
  defp ring_class(assigns)  do
    []
  end

end