defmodule SelphiDaisy.Button do
  @moduledoc """
  A Button element as defined by https://daisyui.com/components/button.

  - btn	`Component`	Button
  - btn-primary	`Modifier`	Button with `primary` color
  - btn-secondary	`Modifier`	Button with `secondary` color
  - btn-accent	`Modifier`	Button with `accent` color
  - btn-info	`Modifier`	Button with `info` color
  - btn-success	`Modifier`	Button with `success` color
  - btn-warning	`Modifier`	Button with `warning` color
  - btn-error	`Modifier`	Button with `error` color
  - btn-ghost	`Modifier`	Button with ghost style
  - btn-link	`Modifier`	Button styled as a link
  - btn-outline	`Modifier`	Transparent Button with colored border
  - btn-active	`Modifier`	Force button to show active state
  - btn-disabled	`Modifier`	Force button to show disabled state
  - glass	`Modifier`	Button with a glass effect
  - loading	`Modifier`	Shows loading spinner
  - no-animation	`Modifier`	Disables click animation
  - btn-lg	`Responsive`	Large button
  - btn-md	`Responsive`	Medium button (default)
  - btn-sm	`Responsive`	Small button
  - btn-xs	`Responsive`	Extra small button
  - btn-wide	`Responsive`	Wide button (more horizontal padding)
  - btn-block	`Responsive`	Full width button
  - btn-circle	`Responsive`	Circle button with a 1:1 ratio
  - btn-square	`Responsive`	Square button with a 1:1 ratio
  """
  use Surface.Component


  @type_values  ~w(none button submit reset)

  # 按钮类型，属性互斥，只能出现一个
  @color_values ~w(neutral primary  secondary accent info success warning error ghost link )

  # mobile按钮大小，不设置默认为 md
  @size_values  ~w(lg md  sm  xs  )

  # mobile 宽度，
  @width_values  ~w( wide block)

  # mobile 形状，不设置默认为 矩形
  @shape_values ~w(circle square)

  @doc """
  按钮类型 <button type="button" />  <button type="submit" /> <button type="reset" />
  默认不生成 type属性，当 Button 用于表单提交时，设置 type="submit"。
  当 Button 用于重置表单内容时，设置 type="reset"。
  """
  prop type, :string, default: "none", values: @type_values

  @doc """
  按钮颜色，不设置默认为 neutral.使用方法 <Button  color="primary" />
  """
  prop color, :string, default: "neutral", values: @color_values

  @doc "btn-outline 可以和 color 同时出现，ghost link 一般不设置outline.使用方法 <Button  outline />"
  prop outline, :boolean

  @doc "btn-active 一般不与 outline 同时出现.使用方法 <Button  active />"
  prop active, :boolean

  @doc "btn-disabled 禁用按钮. 使用方法 <Button  disabled />"
  prop disabled, :boolean

  @doc "玻璃效果. 使用方法 <Button  glass />"
  prop glass, :boolean

  @doc "禁用按钮动效. 使用方法 <Button  no_animation />"
  prop no_animation, :boolean

  @doc "Loading state. 使用方法 <Button  loading />"
  prop loading, :boolean

  @doc "loading时显示的文本，未设置使用 slot 或 label."
  prop loading_text, :string

  @doc """
  mobile按钮大小，响应式属性，可以通过 class 动态修改. eg. sm:btn-sm md:btn-md lg:btn-lg
  使用方法 <Button  size="lg" /> ,或不设置，使用按钮默认大小(md)
  """
  prop size, :string, values: @size_values

  @doc """
  mobile按钮宽度，响应式属性，可以通过 class 动态修改. eg. sm:btn-wide md:btn-block
  使用方法 <Button  width="wide" /> ,或不设置，使用按钮默认宽度
  """
  prop width, :string, values: @width_values

  @doc """
  mobile按钮形状，响应式属性，可以通过 class 动态修改. eg. sm:btn-square
  使用方法 <Button  shape="circle" />,或不设置，使用按钮默认形状(矩形)
  """
  prop shape, :string, values: @shape_values


  # 规定按钮的初始值，可以用js修改，参见 html 文档
  @doc "The value for the button"
  prop value, :string

  # 按钮提交的数据
  @doc "Add multiple named values, translates to phx-value-<name> "
  prop values, :keyword, default: []


  @doc "The label of the button, when no content (default slot) is provided"
  prop label, :string

  @doc "Triggered on click"
  prop click, :event

  @doc "Css classes to propagate down to button. Default class if no class supplied is simply _btn_"
  prop class, :css_class, default: []

  @doc "Add arbitrary attrs like multiple phx-value-* fields"
  prop opts, :keyword, default: []


  @doc """
  The content of the generated `<button>` element. If no content is provided,
  the value of property `label` is used instead.
  """
  slot default



  def render(assigns) do
    ~F"""
    <button
       type={type_value(assigns)}
       {...@opts}
       :on-click={@click}
       value={@value}
       :values={@values}
       class={[
               "btn",
               "btn-outline": @outline,
               "btn-active": @active,
               "btn-disabled": @disabled,
               "glass": @glass,
               "no-animation": @no_animation,
                "loading": @loading
             ] ++ button_classes(assigns) ++ @class}
    >
        <#slot :if={!@loading}>{@label}</#slot>
        {#if @loading}
            {#if @loading_text}
              {@loading_text}
            {/if}
            {#if !@loading_text}
               <#slot>{@label}</#slot>
            {/if}
        {/if}
    </button>
    """
  end


  defp type_value(assigns = %{type: type}) do
    case type do
      "button" -> "button"
      "submit" -> "submit"
      "reset" -> "reset"
      _ -> nil
    end
  end

  defp button_classes(assigns )   do
    color_class(assigns) ++  size_class(assigns) ++ width_class(assigns) ++ shape_class(assigns)
  end

  defp color_class(assigns = %{color: color}) do
    case color do
      "neutral" -> []
      "primary" -> ["btn-primary"]
      "secondary" -> ["btn-secondary"]
      "accent" -> ["btn-accent"]
      "info" -> ["btn-info"]
      "success" -> ["btn-success"]
      "warning" -> ["btn-warning"]
      "error" -> ["btn-error"]
      "ghost" -> ["btn-ghost"]
      "link" -> ["btn-link"]
      _ -> []
    end
  end

  defp color_class(assigns ) do
    []
  end
  defp size_class(assigns = %{size: size}) do
    case size do
      "lg" -> ["btn-lg"]
      "md" -> ["btn-md"]
      "sm" -> ["btn-sm"]
      "xs" -> ["btn-xs"]
      _ -> []
    end
  end
  defp size_class(assigns ) do
    []
  end

  defp width_class(assigns =%{width: width}) do
    case width do
      "wide" -> ["btn-wide"]
      "block" -> ["btn-block"]
      _ -> []
    end
  end
  defp width_class(assigns) do
    []
  end

  defp shape_class(assigns = %{shape: shape}) do
    case shape do
      "circle" -> ["btn-circle"]
      "square" -> ["btn-square"]
      _ -> []
    end
  end
  defp shape_class(assigns ) do
    []
  end



end
