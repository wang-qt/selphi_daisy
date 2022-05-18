defmodule SelphiDaisy.Hero do
  @moduledoc """
  Hero is a component for displaying a large box or image with a title and description.

  - hero	`Component`	Container element
  - hero-content	`Component`	Container for content
  - hero-overlay	`Component`	Overlay the covers the background image
  """
  use Surface.Component

#  import SelphiDaisy.Gettext

  @colors ~w(neutral base-200 base-300  primary secondary accent )

  @doc "背景和文本颜色"
  prop color, :string, default: "base-200", values: @colors

  @doc "是否出现蒙皮，用法 <Hero  overlay />"
  prop overlay, :boolean

  @doc "其他tw类,    "
  prop class, :css_class, default: []

  @doc "内容： Hero.Content"
  slot default, required: true

  @doc """
  添加背景图片
  opts={style: "background-image: url(https://api.lorem.space/image/fashion?w=1000&h=800);"}
  """
  prop opts, :keyword, default: []

  def render(assigns) do
    ~F"""
    <div
       {...@opts}
       class={["hero", "min-h-screen"] ++ color_class(assigns)   ++ @class }
    >
       <div :if={@overlay}  class="hero-overlay bg-opacity-60"></div>

       <#slot />
    </div>
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
