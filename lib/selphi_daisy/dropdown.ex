defmodule SelphiDaisy.Dropdown do
  @moduledoc """
  组件 Dropdown   DropHolder.
  as defined by https://daisyui.com/components/dropdown/

  dropdown组件有两部分组成: 按钮(label),内容(DropHolder).默认按钮的label为 Button和下箭头icon。
  DropHolder 只生成 <div class="dropdown-content" />.
  dropdown的内容一般为 Menu和Card。需要自己添加 `dropdown-content`类。

  - dropdown	`Component`	Container element
  - dropdown-content	`Component`	Container for content
  - dropdown-end	`Modifier`	Aligns to end
  - dropdown-top	`Modifier`	Open from top
  - dropdown-left	`Modifier`	Open from left
  - dropdown-right	`Modifier`	Open from right
  - dropdown-hover	`Modifier`	Opens on hover too
  - dropdown-open	`Modifier`	Force open

  We use a <label tabindex="0"> instead of a <button> because Safari has a bug
  that prevents the button from being focused.
  Using tabindex="0" is required so the dropdown can be focused.
  """
  use Surface.Component
#  alias   SelphiDaisy.Card
  alias   SelphiDaisy.Heroicons

  @type_values ~w(click hover force-open)

  @pop_pos_values ~w(start end  top top-end left left-end right right-end )

  @doc "Dropdown 展开方式。 click: 鼠标点击或tab键, hover: 鼠标悬浮."
  prop  type, :string, default: "click", values: @type_values

  @doc "内容位置："
  prop  pop_pos, :string, default: "start", values: @pop_pos_values

  @doc "其他tw类"
  prop class, :css_class, default: []

  @doc "dropdown 按钮名称"
  slot label, required: true

  @doc "slot可以添加 menu 列表，或 Card  等"
  slot default, required: true

  def render(assigns) do
    ~F"""
    <div
      class={[
        "dropdown",
      ]
        ++ type_classes(assigns)
        ++ pop_pos_classes(assigns)
        ++ @class}
    >
        {#if slot_assigned?(:label)}
          <#slot name="label" />
        {#else}
          <label tabindex="0" class="m-1 btn">
           Button <Heroicons  name="chevron-down" size="4" class="ml-2" />
          </label>
        {/if}

        <#slot />
    </div>
    """
  end
  defp  type_classes(assigns =%{type: type}) do
    case type do
      "hover" -> ["dropdown-hover"]
      "force-open" -> ["dropdown-open"]
      _ -> []
    end
  end
  defp  pop_pos_classes(assigns =%{pop_pos: pop_pos}) do
    case pop_pos do
      "end" -> ["dropdown-end"]
      "top" -> ["dropdown-top"]
      "top-end" -> ["dropdown-top", "dropdown-end"]
      "left" -> ["dropdown-left"]
      "left-end" -> ["dropdown-left","dropdown-end"]
      "right" -> ["dropdown-right"]
      "right-end" -> ["dropdown-right","dropdown-end"]
      _ -> []
    end
  end


end