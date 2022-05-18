defmodule SelphiDaisy.Form.TextArea do
  @moduledoc """
  TextArea

  ## Properties 继承自 Surface.Components.Form.TextArea
  • id :string - The id of the corresponding input field
  • opts :keyword, default: [] - Options list
  • class :css_class - Class or classes to apply to the input
  • value :string - Value to pre-populated the input
  • name :string - The name of the corresponding input field
  • field :any - An identifier for the input
  • form :form - An identifier for the form
  • values :keyword, default: [] - List values that will be sent as part of
    the payload triggered by an event
  • rows :string - Specifies the visible number of lines in a text area
  • cols :string - Specifies the visible width of a text area
  ## Events
  • keydown - Triggered when a key on the keyboard is pressed
  • keyup - Triggered when a key on the keyboard is released
  • window_keydown - Triggered when a key on the keyboard is pressed
    (window-level)
  • window_keyup - Triggered when a key on the keyboard is released
    (window-level)
  • blur - Triggered when the component loses focus
  • focus - Triggered when the component receives focus
  • window_blur - Triggered when the page loses focus
  • window_focus - Triggered when the page receives focus
  • click - Triggered when the component receives click
  • capture_click - Triggered when the component captures click
  ## 组件自己添加属性
  • disabled :boolean - Disable input
  • readonly :boolean - Read only
  • placeholder :string, default: nil - Placeholder value
  • control_class :css_class - Class or classes to apply to the control.
  • color :string, default: "neutral", values: ["neutral", "primary", "secondary", "accent",
  "info", "success", "warning", "error"] - color of the input
  • bordered :boolean -   input 带边框
  • loading :boolean - input 加载动效
  • maxlength :integer - Max length of field, as enforced by client browser.
    Not validated by Elixir.
  • minlength :integer - Minimum length of field, as enforced by client
    browser. Not validated by Elixir.
  • is_addon :boolean -   input 是否为addon，若是只生成 control部分，没有 field部分，
    addon之间没有边距
  • label :string - The string label of the field，水平或有addon时不显示.
  • help_text :string - Help text, will be replaced by error text if
    changeset gets errors，水平或有addon时不显示.
  """
  use  SelphiDaisy.Component
  alias Surface.Components.Form.{Field, FieldContext, TextArea, ErrorTag, Label}
  alias SelphiDaisy.Heroicons

  import SelphiDaisy.Form.Utils

  include(TextArea)

  # mobile按钮大小，不设置默认为 md
  @color_values  ~w(neutral primary  secondary  accent info success warning error )

  #  组件自身添加属性
  @doc "Disable input"
  prop(disabled, :boolean)

  @doc "Read only"
  prop(readonly, :boolean)

  @doc "Placeholder value"
  prop placeholder, :string, default: nil

  @doc """
  给 父元素 <p class="control"> 添加样式，eg. w-32 控制组件宽度
  """
  prop control_class, :css_class

  @doc """
  设置checkbox 颜色
  """
  prop color, :string, default: "neutral", values: @color_values

  @doc """
  边框
  """
  prop bordered, :boolean

  @doc """
  加载按钮
  """
  prop loading, :boolean

  @doc "Max length of field, as enforced by client browser. Not validated by Elixir."
  prop(maxlength, :integer)

  @doc "Minimum length of field, as enforced by client browser. Not validated by Elixir."
  prop(minlength, :integer)

  @doc """
  组件是否为 addon，多个 addon可以并排在一起，没有间距。
  如果为 addon，则忽略  label 和 help_text,
  """
  prop is_addon, :boolean

  @doc """
  按钮标签
  """
  prop label, :string

  @doc """
  帮助和错误
  """
  prop help_text, :string


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

      <Field name={@field} class={["field"]} >

        {!-- 水平字段 或 有addon，不显示label，但要显示 help --}
        {#if !(is_horizontal || has_addons?(assigns)) }
           <Label class="caption">{@label}</Label>
        {/if}

        {!--  输入框基本区域，input 和 icon --}
        {render_control(assigns, hg_size)}

        {!-- 帮助和错误 --}
        <span :if={@help_text && !has_error?(assigns)  } class="help">{@help_text}</span>
        <ErrorTag    class="help is-error" />
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
      [ "textarea","w-full" ]
      ++ border_class(assigns)
      ++ color_class(assigns)
      )

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
          "has-icons-right":  display_error_icon?(assigns) || display_valid_icon?(assigns),
          "is-loading": @loading
        ] ++ control_class(assigns)
        }>
         <TextArea
           {...included_props(assigns)}
           opts={
           [
              placeholder: @placeholder,
              disabled: @disabled,
              readonly: @readonly,
              maxlength: @maxlength,
              minlength: @minlength
           ] ++ @opts}
           form={form}
         />


        {!-- 右icon不存在，则显示校验图标 --}
        <span  :if={ !@loading && display_error_icon?(assigns)}
                class="icon  is-right ">
             <Heroicons name="x" size={icon_size(assigns,hg_size)} class="text-red-600" />
        </span>
        <span  :if={!@loading && display_valid_icon?(assigns)}
                class="icon  is-right ">
            <Heroicons name="check" size={icon_size(assigns,hg_size)} class="text-green-600" />
        </span>
      </div>
    </FieldContext>
    """
  end

  defp border_class(assigns = %{bordered: bordered}) do
    if bordered do
      ["textarea-bordered"]
    else
      []
    end

  end
  defp border_class(assigns ) do
    []
  end

  defp color_class(assigns = %{color: color}) do
    if has_error?(assigns) do
      ["textarea-error"]
    else
      case color do
        "primary" -> ["textarea-primary"]
        "secondary" -> ["textarea-secondary"]
        "accent" -> ["textarea-accent"]
        "info" -> ["textarea-info"]
        "success" -> ["textarea-success"]
        "warning" -> ["textarea-warning"]
        "error" -> ["textarea-error"]
        _ -> []
      end
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

end