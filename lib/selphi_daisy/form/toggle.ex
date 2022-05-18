defmodule SelphiDaisy.Form.Toggle do
  @moduledoc """
  The Toggle component https://daisyui.com/components/toggle/
  Toggle 本质上使用 <input type="check" /> 和 Checkbox 一样。
  """
  use SelphiDaisy.Component
  alias Surface.Components.Form.{Field, FieldContext, Checkbox}

  include(Checkbox)

  # mobile按钮大小，不设置默认为 md
  @size_values  ~w(lg md  sm  xs  )

                  # mobile按钮大小，不设置默认为 md
  @color_values  ~w(neutral primary  secondary  accent  )

  @doc "Disable selection"
  prop disabled, :boolean


  @doc "checked selection"
  prop checked, :boolean

  @doc """
  设置checkbox大小
  """
  prop size, :string, values: @size_values

  @doc """
  设置checkbox 颜色
  """
  prop color, :string, default: "neutral", values: @color_values


  @doc "The text / label of the checkbox"
  slot default

  def render(assigns) do
    # 修改 assign中的class，添加默认样式 与 SelphiDaisy.Form.Checkbox 传进来的 class 进行合并
    # 传入的样式放在后边，可以覆盖默认样式
    # 合并后的 class 传入底层 Surface.Components.Form.Checkbox 组件
    assigns = merge_classes(assigns,
      ["toggle"]
      ++ color_class(assigns)
      ++ size_class(assigns) )

    # included_props 只会取 other_component(本例是Surface.Components.Form.Checkbox)的属性
    # 本组件添加的属性,只能在本组件使用,不会传递到底层组件
    ~F"""
          <Field  name={@field} class="field">
             <div class="control">
               <label class="cursor-pointer flex items-center justify-start gap-4" disabled={@disabled}>
                  <Checkbox
                    opts={[disabled: @disabled, checked: @checked ] ++ @opts }
                    {...included_props(assigns)}
                  />
                  <span class={["caption"] ++ caption_size_class(assigns) }>
                     <#slot/>
                  </span>
               </label>
             </div>
          </Field>
    """
  end

  defp caption_size_class(assigns = %{size: size}) do
    case size do
      "xs" -> ["is-small"]
      "sm" -> ["is-normal"]
      "md" -> ["is-medium"]
      "lg" -> ["is-large"]
      _ -> []
    end
  end
  defp caption_size_class(assigns ) do
    []
  end

  defp size_class(assigns = %{size: size}) do
    case size do
      "xs" -> ["toggle-xs"]
      "sm" -> ["toggle-sm"]
      "md" -> ["toggle-md"]
      "lg" -> ["toggle-lg"]
      _ -> []
    end
  end
  defp size_class(assigns ) do
    []
  end

  defp color_class(assigns = %{color: color}) do
    case color do
      "primary" -> ["toggle-primary"]
      "secondary" -> ["toggle-secondary"]
      "accent" -> ["toggle-accent"]
      _ -> []
    end
  end

end