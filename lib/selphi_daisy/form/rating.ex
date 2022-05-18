defmodule SelphiDaisy.Form.Rating do
  @moduledoc """
  Rating 组件定义 https://daisyui.com/components/rating/
  rating本质上使用 <input type="radio" /> 和 RadioButton一样。
  """
  use SelphiDaisy.Component
  alias Surface.Components.Form.{Field, RadioButton}

  # mobile按钮大小，不设置默认为 md
  @size_values  ~w(lg md  sm  xs  )

  # mask 形状，默认为 mask-star
  @mask_values  ~w(  mask-star mask-star-2  mask-heart  )

  @doc "The the field on the changeset"
  prop field, :atom, required: true

  @doc """
  设置 Rating 大小
  """
  prop size, :string, values: @size_values

  @doc "Any opts you want to pass on to internal `Surface.RadioButton` and `Phoenix.HTML.Form.radio_button/3`"
  prop opts, :keyword, default: []

  @doc "Class to apply to input"
  prop class, :css_class, default: []


  @doc """
  设置 mask 形状
  """
  prop mask, :string, default: "mask-star", values: @mask_values

  @doc """
  背景色， tw 原子类，默认为neutral，eg. bg-red-400 bg-orange-400 bg-yellow-400 bg-lime-400 bg-green-500
  如果每个 input 没有单独设置 color属性，则使用bg_color。
  """
  prop bg_color, :string

  @doc """
  精度为半颗星。options配置的每颗星分裂为左右两个，左边的value为 当前 value - 0.5
  value 从1开始为连续自然数
  """
  prop half, :boolean

  @doc """
  给 父元素 <p class="control"> 添加样式，eg. gap-1 控制组件间距
  """
  prop control_class, :css_class

  @doc """
  `options` are expected to be an enumerable which will be used to
  generate each respective `RadioButton`. The enumerable may have:
    * keyword lists - each keyword list is expected to have the keys
      `:value`. Additional keys such as `:checked`,`:color` may
      be given to customize the option
  ## example
      <Rating   field={:rating} half bg_color="bg-red-900" mask="mask-heart" size="sm"
          options={[
            [value: 1, color: "bg-red-400" ],
            [value: 2, color: "bg-orange-400", checked: true],
            [value: 3, color: "bg-yellow-400" ],
            [value: 4, color: "bg-lime-400" ]
            [value: 5, color: "bg-green-400" ]
          ]} />
  """
  prop options, :list

  def render(assigns) do
    ~F"""
    <Context get={SelphiDaisy.Form.HGroup, is_horizontal: is_horizontal, size: hg_size }>
      <Field class="field" name={@field}>
        <div class={[
                 "control",
                 "rating",
                 "rating-half": @half
                ] ++ size_class(assigns,hg_size) ++ control_class(assigns) }>
          {!-- 隐藏radio, 全部取消选中 --}
          <RadioButton field={@field} class="rating-hidden" value="0" />
          {#for entry <- @options}
             {#if @half}
                 <RadioButton
                   field={@field}
                   opts={ @opts }
                   class={["mask"] ++ mask_class(assigns,1) ++ get_color(assigns,entry) ++ @class}
                   value={ get_value(entry) - 0.5 }
                 />
                 <RadioButton
                   field={@field}
                   opts={ @opts }
                   class={["mask"] ++ mask_class(assigns,2) ++ get_color(assigns,entry) ++ @class}
                   value={get_value(entry)}
                   checked={get_checked(entry)}
                />
             {#else}
                <RadioButton
                  field={@field}
                  opts={ @opts }
                  class={["mask"] ++ mask_class(assigns,0) ++ get_color(assigns, entry) ++ @class}
                  value={get_value(entry)}
                  checked={get_checked(entry)}
                />
              {/if}
          {/for}
        </div>
      </Field>
    </Context>
    """
  end
  defp get_checked(list) when is_list(list), do: Keyword.get(list, :checked, false)
  defp get_checked(_), do: false

  # radio 组件 label
  defp get_value(list) when is_list(list), do: Keyword.get(list, :value)
  defp get_value(_), do: ""

  #
  defp get_color(assigns =%{bg_color: bg_color} , list) when is_list(list) do
      color = Keyword.get(list, :color)
      case color do
        nil ->
          case bg_color do
            nil -> []
            _ -> [bg_color]
          end
        _ -> [color]
      end
  end
  defp get_color(_), do: [""]

  # 生成mask 类 ~w(  mask-star mask-star-2  mask-heart  )
  defp mask_class(assigns = %{mask: mask}, index) when index == 1 do
    case mask do
      "mask-star-2" -> ["mask-star-2","mask-half-1"]
      "mask-heart" -> ["mask-heart","mask-half-1"]
      _ -> [" mask-star","mask-half-1"]
    end
  end
  defp mask_class(assigns = %{mask: mask}, index) when index == 2 do
    case mask do
      "mask-star-2" -> ["mask-star-2","mask-half-2"]
      "mask-heart" -> ["mask-heart","mask-half-2"]
      _ -> [" mask-star","mask-half-2"]
    end
  end
  defp mask_class(assigns = %{mask: mask}, _index)  do
    case mask do
      "mask-star-2" -> ["mask-star-2"]
      "mask-heart" -> ["mask-heart"]
      _ -> [" mask-star"]
    end
  end

  # 设置输入框外层 control类所在元素的样式
  defp control_class(assigns = %{control_class: control_class}) do
    case control_class do
      nil -> []
      _ -> control_class
    end
  end
  defp control_class(assigns) do
    []
  end

  # hg_size 优先级高于组件的size
  defp size_class(_assigns, hg_size)  when is_binary(hg_size) do
    case hg_size do
      "xs" -> ["rating-xs"]
      "sm" -> ["rating-sm"]
      "md" -> ["rating-md"]
      "lg" -> ["rating-lg"]
      _ -> []
    end
  end
  defp size_class(assigns = %{size: size}, _hg_size) do
    case size do
      "xs" -> ["rating-xs"]
      "sm" -> ["rating-sm"]
      "md" -> ["rating-md"]
      "lg" -> ["rating-lg"]
      _ -> []
    end
  end
  defp size_class(assigns, hg_size) do
    []
  end

end