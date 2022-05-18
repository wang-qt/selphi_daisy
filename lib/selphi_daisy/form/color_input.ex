defmodule SelphiDaisy.Form.ColorInput do
  @moduledoc """
  颜色框

  ## Examples

    <ColorInput form="user" field="color" opts={autofocus: "autofocus"} />

  ## Properties 继承自 Surface.Components.Form.ColorInput

  • values :keyword, default: [] - List values that will be sent as part of
    the payload triggered by an event
  • form :form - An identifier for the form
  • field :any - An identifier for the input
  • id :string - The id of the corresponding input field
  • name :string - The name of the corresponding input field
  • value :string - Value to pre-populated the input
  • class :css_class - Class or classes to apply to the input
  • opts :keyword, default: [] - Options list

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
  • icon_left :any, default: nil - Icon to place on the left side of input
    box. Must be a valid icon. Bulma does not currently support stacked /
    layered icons inside a form control.
  • icon_right :any, default: nil - Icon to place on the right side of
    input box. Must be a valid icon. Setting this prop will overwrite (and not
    display) any of the generated icons for validations, similar to setting
    disable_icons="true". Bulma does not currently support stacked / layered
    icons inside a form control.
  • size :string, default: "normal", values: ["lg", "md",  "sm",  "xs" ] - Size of the input
  • control_class :css_class - Class or classes to apply to the control.
  • color :string, default: "neutral", values: ["neutral", "primary", "secondary", "accent",
  "info", "success", "warning", "error"] - color of the input
  • bordered :boolean -   input 带边框
  • is_addon :boolean -   input 是否为addon，若是只生成 control部分，没有 field部分，
    addon之间没有边距
  • label :string - The string label of the field，水平或有addon时不显示.
  • help_text :string - Help text, will be replaced by error text if
    changeset gets errors，水平或有addon时不显示.

  ## Slots
  • left_addon - Slot adds content to left side of input. Only inputs,
    buttons and dropdowns are supported. NOTE: If you supply addons, the label
    is disabled. You cannot combine labels and addons. If you require field
    labels with addons you must use horizontal forms. See
    SurfaceBulma.Form.HorizontalControlGroup.
  • right_addon - Slot adds content to right side of input. Only inputs,
    buttons and dropdowns are supported. NOTE: If you supply addons, the label
    is disabled. You cannot combine labels and addons. If you require field
    labels with addons you must use horizontal forms. See
    SurfaceBulma.Form.HorizontalControlGroup.

  """
#  use  SelphiDaisy.Component
  use  SelphiDaisy.Form.TextInputBase
  alias Surface.Components.Form.{FieldContext, ColorInput}
  alias SelphiDaisy.Heroicons
#  alias SelphiDaisy.Cssgg


  # 包含 ColorInput 属性
  include(ColorInput)



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
          "has-icons-right": @icon_right ,
          "has-icons-left": @icon_left,
          "is-loading": @loading
        ] ++ control_class(assigns)
        }>
         <ColorInput
           {...included_props(assigns)}
           opts={
           [
              disabled: @disabled,
              readonly: @readonly,
           ] ++ @opts}
           form={form}
         />

         {#if is_binary(@icon_left)}
          <span class="icon  is-left">
           <Heroicons name={@icon_left} size={icon_size(assigns,hg_size)} />
           {!--  <Cssgg  name={@icon_left} size={icon_size(assigns,hg_size)} />  --}
          </span>
        {/if}
        {#if is_binary(@icon_right)}
          <span class="icon  is-right">
           <Heroicons name={@icon_right} size={icon_size(assigns,hg_size)} />
           {!--  <Cssgg  name={@icon_right} size={icon_size(assigns,hg_size)} /> --}
          </span>
        {/if}
        {!-- 右icon不存在，则显示校验图标 --}
        {!--
        <span  :if={display_error_icon?(assigns)}
                class="icon  is-right ">
             <Heroicons name="x" size={icon_size(assigns,hg_size)} class="text-red-600" />
        </span>
        <span  :if={display_valid_icon?(assigns)}
                class="icon  is-right ">
            <Heroicons name="check" size={icon_size(assigns,hg_size)} class="text-green-600" />
        </span>
        --}
      </div>
    </FieldContext>
    """
  end




end