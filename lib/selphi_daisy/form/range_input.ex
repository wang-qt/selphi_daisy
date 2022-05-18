defmodule SelphiDaisy.Form.RangeInput do
  @moduledoc """

  ## Properties Surface.Components.Form.TextInput
  • values :keyword, default: [] - List values that will be sent as part of
    the payload triggered by an event
  • form :form - An identifier for the form
  • field :any - An identifier for the input
  • id :string - The id of the corresponding input field
  • name :string - The name of the corresponding input field
  • value :string - Value to pre-populated the input
  • class :css_class - Class or classes to apply to the input
  • opts :keyword, default: [] - Options list
  • min :string - Minimum value for the input
  • max :string - Maximum value for the input
  • step :string - Sets or returns the value of the step attribute of the
    slider control
  ## Events
  • capture_click - Triggered when the component captures click
  • click - Triggered when the component receives click
  • window_focus - Triggered when the page receives focus
  • window_blur - Triggered when the page loses focus
  • focus - Triggered when the component receives focus
  • blur - Triggered when the component loses focus
  • window_keyup - Triggered when a key on the keyboard is released
    (window-level)
  • window_keydown - Triggered when a key on the keyboard is pressed
    (window-level)
  • keyup - Triggered when a key on the keyboard is released
  • keydown - Triggered when a key on the keyboard is pressed
  ## 组件自己添加属性
  • disabled :boolean - Disable input
  • readonly :boolean - Read only
  • size :string, default: "normal", values: ["small", "normal", "medium",
    "large"] - Size of the input
  • control_class :css_class - Class or classes to apply to the control.
  • color :string, default: "neutral", values: ["neutral", "primary", "secondary", "accent",
    ] - color of the input
  • label :string - The string label of the field，水平或有addon时不显示.
  • measure: 下方显示刻度，刻度存在

  """
  use  SelphiDaisy.Component
  alias Surface.Components.Form.{Field, FieldContext, RangeInput,ErrorTag, Label}

  import SelphiDaisy.Form.Utils

  include(RangeInput)

  #   大小，不设置为 md
  @size_values  ~w(lg md  sm  xs  )

  #  颜色，不设置默认为 neutral
  @color_values  ~w(neutral primary  secondary  accent   )

                   #  组件自身添加属性
  @doc "Disable input"
  prop(disabled, :boolean)

  @doc "Read only"
  prop(readonly, :boolean)


  @doc """
  设置checkbox大小
  """
  prop size, :string, values: @size_values

  @doc """
  给 父元素 <p class="control"> 添加样式，eg. w-32 控制组件宽度
  """
  prop control_class, :css_class

  @doc """
  设置checkbox 颜色
  """
  prop color, :string, default: "neutral", values: @color_values

  @doc """
  按钮标签
  """
  prop label, :string


  @doc """
  下方显示刻度
  """
  prop measure, :boolean



  def render(assigns = %{is_addon: true}) do
    ~F"""
    {render_control(assigns, nil)}
    """
  end

  # 生成结构完整的 field结构，
  #<div class="field">
  #  <label class="caption"> 标题</label>
  #  <div class="control" >
  #    <input />
  #    <span class="icon is-left"> <svg /> </span>
  #    <span class="icon is-right"> <svg /> </span>
  #  </div>
  #  <span class="help"></span
  #</div>
  # 普通的表单 垂直字段，如果有多个 addon
  def render(assigns) do
    ~F"""
    <Context get={SelphiDaisy.Form.HGroup, is_horizontal: is_horizontal, size: hg_size }>

      <Field name={@field} class={["field" ]} >

        {!-- 水平字段  ，不显示label，但要显示 help --}
        {#if !is_horizontal  }
           <Label class="caption">{@label}</Label>
        {/if}

        {!--  输入框基本区域，input 和 icon --}
        {render_control(assigns, hg_size)}


         {!-- help和错误, 组件有addon时，不显示 --}
        <ErrorTag  class="help is-error" />

      </Field>
    </Context>
    """
  end


  # 当 组件是 addon时，只生成 control，不生成外部的 field
  # 同时 忽略 lable 和 help_text
  # 生成结构
  #  <div class="control" >
  #    <input />
  #    <span class="icon is-left"> <svg /> </span>
  #    <span class="icon is-right"> <svg /> </span>
  #  </div>
  def render_control(assigns, hg_size ) do
    assigns = merge_classes(assigns,
      [ "range","w-full" ]
      ++ color_class(assigns)
         ++ size_class(assigns, hg_size) )

    # !! 模版中调用函数，上一个函数中的 context 不能使用，
    # 需要从assigns的__context__中重新获取，否则字段没有关联的 form
    # 调用SelphiDaisy.Form.Utils.get_form(assigns)
    #  使用 <Context get={Surface.Components.Form, form: form}></Context> 无效！！
    form = get_form(assigns)

    ~F"""
    <FieldContext  name={@field} >
      <div class={
        [
          "control"
        ] ++ control_class(assigns)
        }>
         <RangeInput
           {...included_props(assigns)}
           opts={
           [
              disabled: @disabled,
              readonly: @readonly,
              max: @max,
              min: @min,
              step: @step
           ] ++ @opts}
           form={form}
         />

        {!-- 刻度 --}
        {#if @measure && @step }
           {render_measure(assigns)}
        {/if}
      </div>
    </FieldContext>
    """
  end

  def render_measure(assigns) do
    total = String.to_integer(assigns.max ) - String.to_integer(assigns.min )
    count = div(total,  String.to_integer(assigns.step) )  + 1
    ~F"""
    <div class={"w-full flex justify-between text-xs px-2"}>
     {#for i <- 1..count }
      <span>|</span>
     {/for}
    </div>
    <div class={"w-full flex justify-between text-xs px-2"}>
     {#for i <- 1..count }
      <span>{(i - 1) * String.to_integer(assigns.step)}</span>
     {/for}
    </div>

   """

  end

  defp color_class(assigns = %{color: color}) do
    case color do
      "primary" -> ["range-primary"]
      "secondary" -> ["range-secondary"]
      "accent" -> ["range-accent"]
      _ -> []
    end
  end

  # hg_size 优先级高于组件的size
  defp size_class(_assigns, hg_size)  when is_binary(hg_size) do
    case hg_size do
      "xs" -> ["range-xs"]
      "sm" -> ["range-sm"]
      "md" -> ["range-md"]
      "lg" -> ["range-lg"]
      _ -> []
    end
  end
  defp size_class(assigns = %{size: size}, _hg_size) do
    case size do
      "xs" -> ["range-xs"]
      "sm" -> ["range-sm"]
      "md" -> ["range-md"]
      "lg" -> ["range-lg"]
      _ -> []
    end
  end
  defp size_class(assigns, hg_size) do
    []
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

end