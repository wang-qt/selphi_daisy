defmodule SelphiDaisy.Footer do
  @moduledoc """
  Footer 组件，样式 by https://daisyui.com/components/footer/
  Footer can contain logo, copyright notice, and links to other pages.

  - footer	`Component`	Footer component
  - footer-title	`Component`	Title of a footer column
  - footer-center	`Modifier`	Aligns footer content to center
  """
  use Surface.Component

  @colors ~w(neutral base-200 base-300  primary secondary accent )

  @doc "背景和文本颜色"
  prop color, :string, default: "neutral", values: @colors

  @doc "其他tw类, eg. footer-center  "
  prop class, :css_class, default: []


  @doc " Footer.Item "
  slot default, required: true

  def render(assigns) do
    ~F"""
    <footer class={["p-10", "footer"] ++ color_class(assigns) ++ @class}>

      <#slot />

    </footer>
    """
  end

  defp color_class(assigns = %{color: color}) do
    case color do
      "neutral" -> ["bg-neutral","text-neutral-content"]
      "base-200" -> ["bg-base-200","text-base-content"]
      "base-300" -> ["bg-base-300","text-base-content"]
      "primary" -> ["bg-primary","text-primary-content"]
      "secondary" -> ["bg-secondary","text-secondary-content"]
      "accent" -> ["bg-accent","text-accent-content"]
      _ -> ["bg-neutral","text-neutral-content"]
    end
  end

end