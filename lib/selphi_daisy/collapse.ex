defmodule SelphiDaisy.Collapse do
  @moduledoc """
  组件 Collapse Collapse.Title Collapse.Content

  as defined by https://daisyui.com/components/collapse/

  - collapse	`Component`	Container element
  - collapse-title	`Component`	Title element
  - collapse-content	`Component`	Cointainer for content
  - collapse-arrow	`Modifier`	Adds arrow icon
  - collapse-plus	`Modifier`	Adds plus/minus icon
  - collapse-open	`Modifier`	Force open
  - collapse-close	`Modifier`	Force close
  """
  use Surface.Component

  @type_values ~w(focus check)

  @force_values ~w(none open close)

  @icon_values ~w(none arrow plus)

  @doc "collapse工作方式。 focus: When div loses focus, it gets closed.
  check:  It needs to get clicked again to get closed."
  prop  type, :string, default: "focus", values: @type_values

  @doc "强制打开或关闭"
  prop  force, :string, default: "none", values: @force_values

  @doc "图标，箭头或加号"
  prop  icon, :string, default: "none", values: @icon_values

  @doc "collapse title"
  slot title, required: true

  @doc "collapse content"
  slot default, required: true

  @doc "其他tw类，eg设置边框,背景和圆角. border border-base-300 bg-base-100 rounded-box"
  prop class, :css_class, default: []

  def render(assigns) do
    ~F"""
    <div
      tabindex="0"
      class={[
        "collapse",
      ]
        ++ force_classes(assigns)
        ++ icon_classes(assigns)
        ++ @class}
    >
        {#if @type == "check"}
          <input type="checkbox">
        {/if}

        <#slot name="title" />
        <#slot />
    </div>
    """
  end

  defp  force_classes(assigns =%{force: force}) do
    case force do
      "open" -> ["collapse-open"]
      "close" -> ["collapse-close"]
      _ -> []
    end
  end
  defp  icon_classes(assigns =%{icon: icon}) do
    case icon do
      "arrow" -> ["collapse-arrow"]
      "plus" -> ["collapse-plus"]
      _ -> []
    end
  end

end