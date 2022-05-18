defmodule SelphiDaisy.Card do
  @moduledoc """
  Card component.

  - card	      `Component`	Container element
  - card-title	`Component`	Title of card
  - card-body	  `Component`	Container for content
  - card-actions	`Component`	Container for buttons
  - card-bordered	 `Utility`	Adds border to <card>
  - image-full	`Utility`	The image in <figure> element will be the background
  - card-normal	`Responsive`	Applies default paddings
  - card-compact	`Responsive`	Applies smaller padding
  - card-side	 `Responsive`	The image in <figure> will be on to the side

  https://daisyui.com/components/card
  """
  use Surface.Component

  @colors ~w(default primary secondary accent neutral)

  @shadows ~w(nil sm default md lg xl 2xl)

  @doc "Which way to align text, will cascade to all child elements"
  prop text_align, :string, default: "default", values: ~w(default center)

  @doc "图片在下, `card-side`时，图片在右"
  prop figure_down, :boolean

  @doc "背景和文本颜色"
  prop color, :string, default: "default", values: @colors

  @doc "阴影大小，如果有阴影则无边框。否则使用默认边框"
  prop shadow, :string, default: "nil", values: @shadows

  @doc "其他tw类，eg. lg:card-side image-full. 这两个类不能同时使用"
  prop class, :css_class, default: []

  @doc """
  添加其他属性， opts={tabindex: "0"}
  """
  prop opts, :keyword, default: []

  @doc "card body slot"
  slot default, required: true

  @doc ""
  slot figure

  def render(assigns) do
    ~F"""
    <div
      id="card"
      :hook="Card"
      {...@opts}
      class={[
        "card",
        "zoom-in",
        "text-center": @text_align == "center",
        "card-bordered": @shadow == "nil",
      ] ++
        card_classes(assigns) ++ @class}
    >

      <figure
         id="other"
         :if={slot_assigned?(:figure) && @figure_down !== "true"}
         class={ slot_class(@figure)}
        :hook="OtherHook"
      >
        <#slot name="figure" />
      </figure>

      <#slot />

      <figure
         :if={slot_assigned?(:figure) && @figure_down == "true"}
         class={ slot_class(@figure)}
      >
         <#slot name="figure" />
      </figure>

    </div>
    """
  end

  # 把slot的 class 应用到"父组件"的 <figure> 标签上
  # 用到本组件标签，直接使用 @class
  defp slot_class(slot) do
    #slot :
    #[
    #  %{
    #    __slot__: :figure,
    #    class: ["px-10", "pt-10"],
    #    inner_block: #Function<2.106645797/2 in SelphiDaisy.Card.Example02.render/1>
    #  }
    #]
    case slot do
      [%{class: class}] ->
        class
      _ ->
        []
    end
  end

  # 根据 shadow 和 color, 构造class
  defp card_classes(assigns) do
    card_shadow(assigns) ++ card_color(assigns)
  end
  defp card_shadow(%{shadow: shadow}) when shadow in @shadows do
    case shadow do
      "nil" ->
        []
      "sm" ->
        ["shadow-sm"]
      "default" ->
        ["shadow"]
      "md" ->
        ["shadow-md"]
      "lg" ->
        ["shadow-lg"]
      "xl" ->
        ["shadow-xl"]
      "2xl" ->
        ["shadow-2xl"]

    end
  end
  defp card_color(%{color: color}) when color in @colors do
    case color do
      "default" ->
        []
      "primary" ->
        ["bg-primary", "text-primary-content"]
      "secondary" ->
        ["bg-secondary", "text-secondary-content"]
      "accent" ->
        ["bg-accent", "text-accent-content"]
      "neutral" ->
        ["bg-neutral", "text-neutral-content"]
    end
  end


end