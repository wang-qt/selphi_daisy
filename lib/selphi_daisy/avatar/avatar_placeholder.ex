defmodule SelphiDaisy.Avatar.Placeholder do
  @moduledoc """
   Avatar.Placeholder 组件。

  as defined by https://daisyui.com/components/avatar

  在 Avatar.Group group 中 使用 avatar，只有 size
  """
  use Surface.Component

  @size_base_values ~w(8 10 12 14 16 20 24 32)

  @doc "头像大小，默认 12，48px"
  prop size, :string, default: "12", values: @size_base_values

  @doc "Placehoder 名称"
  prop label, :string, required: true

  @doc "online或 offline 标志 "
  prop indicator, :string, default: "none", values: ["none","online","offline"]

  def render(assigns) do
    ~F"""
    <div class={["avatar", "placeholder"] ++ indicator_class(assigns)}>
      <div class={["bg-neutral-focus", "text-neutral-content", "rounded-full"] ++ size_class(assigns)} >
        <span class={text_class(assigns)}>{@label}</span>
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

  defp text_class(assigns = %{size: size}) do
    case size do
      "8" -> ["text-xs"]
      "10" -> ["text-sm"]
      "12" -> ["text-base"]
      "14" -> ["text-lg"]
      "16" -> ["text-xl"]
      "20" -> ["text-2xl"]
      "24" -> ["text-3xl"]
      "32" -> ["text-4xl"]
    end
  end

end