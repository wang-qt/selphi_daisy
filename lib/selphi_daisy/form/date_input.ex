defmodule SelphiDaisy.Form.DateInput do
  @moduledoc """
  日期组件
  """
  use  SelphiDaisy.Form.TextInputBase
  alias Surface.Components.Form.{FieldContext, DateInput}
  alias SelphiDaisy.Heroicons

  # 包含 ColorInput 属性
  include(DateInput)

  # date 组件 min,max 为日期字符串，eg max="2000-01-03" min="2000-01-03"，
  #  组件将不允许用户选择范围外的日期。
  @doc "Largest date allowed, as enforced by client browser. Not validated by Elixir."
  prop max, :string

  @doc "Earliest date allowed, as enforced by client browser. Not validated by Elixir."
  prop min, :string

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

      <Field name={@field} class={["field", "has-addons": has_addons?(assigns) ]} >

        {!-- 左侧addon --}
        <Context :if={slot_assigned?(:left_addon)} put={SelphiDaisy.Form, is_addon: true}>
          {#for {_, index} <- Enum.with_index(@left_addon)}
              <#slot name="left_addon" index={index}/>
          {/for}
        </Context>

        {!-- 水平字段 或 有addon，不显示label，但要显示 help --}
        {#if !(is_horizontal || has_addons?(assigns)) }
           <Label class="caption">{@label}</Label>
        {/if}

        {!--  输入框基本区域，input 和 icon --}
        {render_control(assigns, hg_size)}

         {!-- 右侧addon --}
         <Context :if={slot_assigned?(:right_addon)} put={SelphiDaisy.Form, is_addon: true}>
            {#for {_, index} <- Enum.with_index(@right_addon)}
                <#slot name="right_addon" index={index}/>
            {/for}
         </Context>

        {!-- 帮助和错误, 组件有addon时，不显示 --}
        <span :if={@help_text && !has_error?(assigns)  && !has_addons?(assigns) } class="help">{@help_text}</span>
        <ErrorTag :if={!has_addons?(assigns)}  class="help is-error" />
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
      [ "input","w-full" ]
      ++ border_class(assigns)
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
          "control",
          "is-small": @size == "xs" || @size == "sm",
          "is-medium": @size == "md",
          "is-large": @size == "lg",
          "has-icons-right": @icon_right || display_error_icon?(assigns) || display_valid_icon?(assigns),
          "has-icons-left": @icon_left,
          "is-loading": @loading
        ] ++ control_class(assigns)
        }>
         <DateInput
           {...included_props(assigns)}
           opts={
           [
              placeholder: @placeholder,
              disabled: @disabled,
              readonly: @readonly,
              max: @max,
              min: @min,
           ] ++ @opts}
           form={form}
         />

         {#if is_binary(@icon_left)}
          <span class="icon  is-left">
           <Heroicons name={@icon_left} size={icon_size(assigns,hg_size)} />
          </span>
        {/if}
        {#if is_binary(@icon_right)}
          <span class="icon  is-right">
           <Heroicons name={@icon_right} size={icon_size(assigns,hg_size)} />
          </span>
        {/if}
        {!-- 右icon不存在，则显示校验图标 --}
        <span  :if={display_error_icon?(assigns)}
                class="icon  is-right ">
             <Heroicons name="x" size={icon_size(assigns,hg_size)} class="text-red-600" />
        </span>
        <span  :if={display_valid_icon?(assigns)}
                class="icon  is-right ">
            <Heroicons name="check" size={icon_size(assigns,hg_size)} class="text-green-600" />
        </span>
      </div>
    </FieldContext>
    """
  end




end