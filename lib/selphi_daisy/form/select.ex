defmodule SelphiDaisy.Form.Select do
  @moduledoc """
  ## Properties 继承自 Surface.Components.Form.Select
  • id :string - The id of the corresponding select field
  • form :form - The form identifier
  • field :string - The field name
  • name :string - The name of the corresponding select field
  • class :css_class - The CSS class for the underlying tag
  • options :any, default: [] - The options in the select
  • prompt :string - An option to include at the top of the options with
    the given prompt text
  • selected :any - The default value to use when none was sent as
    parameter
  • opts :keyword, default: [] - Options list

  ## 自己添加属性
  • disabled :boolean - Disable input
  • icon_left :any, default: nil - Icon to place on the left side of input
    box. Must be a valid icon. Bulma does not currently support stacked /
    layered icons inside a form control.
  • icon_right :any, default: nil - Icon to place on the right side of input
    box. Must be a valid icon. Bulma does not currently support stacked /
    layered icons inside a form control.
  • size :string, default: "normal", values: ["lg", "md",  "sm",  "xs" ] - Size of the input
  • control_class :css_class - Class or classes to apply to the control.
  • color :string, default: "neutral", values: ["neutral", "primary", "secondary", "accent",
  "info", "success", "warning", "error"] - color of the input
  • bordered :boolean -   input 带边框
  • loading :boolean - input 加载动效
  • is_addon :boolean -   input 是否为addon，若是只生成 control部分，没有 field部分，
    addon之间没有边距
  • label :string - The string label of the field，水平或有addon时不显示.
  • help_text :string - Help text, will be replaced by error text if
    changeset gets errors，水平或有addon时不显示.
  • multiple :boolean - Multiple Select
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
  use  SelphiDaisy.Component
  alias Surface.Components.Form.{Field, FieldContext, MultipleSelect, Select, ErrorTag, Label}
  alias SelphiDaisy.Heroicons
  import SelphiDaisy.Form.Utils

  include(Select)

  # mobile按钮大小，不设置默认为 md
  @size_values  ~w(lg md  sm  xs  )

                  # mobile按钮大小，不设置默认为 md
  @color_values  ~w(neutral primary  secondary  accent  ghost info success warning error )


   #  组件自身添加属性

  @doc "Disable input"
  prop(disabled, :boolean)

  @doc """
   输入框左侧图标，Heroicons
  """
  prop icon_left, :string

  @doc """
   输入框左侧图标，Heroicons
  """
  prop icon_right, :string


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
  边框
  """
  prop bordered, :boolean

  @doc """
  加载按钮
  """
  prop loading, :boolean

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

  @doc "Multiple Select"
  prop multiple, :boolean

  @doc """
  input组件的左侧addons，使用 addon则自动会隐藏label。
  addon只支持 inputs, buttons and dropdowns组件。
  如果想显示 label，使用 HGroup 组件的label代替。
  """
  slot left_addon

  @doc """
  input组件的右侧addons，使用 addon则自动会隐藏label。
  addon只支持 inputs, buttons and dropdowns组件。
  如果想显示 label，使用 HGroup 组件的label代替。
  """
  slot right_addon

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
      [ "select","w-full" ]
      ++ border_class(assigns)
      ++ color_class(assigns)
      ++ multiple_class(assigns)
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
          {#if @multiple}
             <MultipleSelect
               {...included_props(assigns)}
               opts={[disabled: @disabled] ++ @opts}
               form={form} />
          {#else}
             <Select
               {...included_props(assigns)}
               opts={[disabled: @disabled] ++ @opts}
               form={form} />
          {/if}

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

  #  multiple select增加高度和边距
  defp multiple_class(assigns = %{multiple: true}) do
    ["py-2","px-4","h-auto","w-auto"]
  end
  defp multiple_class(assigns  ) do
    []
  end

  defp border_class(assigns = %{bordered: bordered}) do
    if bordered do
      ["select-bordered"]
    else
      []
    end

  end
  defp border_class(assigns ) do
    []
  end

  defp color_class(assigns = %{color: color}) do
#    IO.inspect assigns

    if has_error?(assigns) do
      ["select-error"]
    else
      case color do
        "primary" -> ["select-primary"]
        "secondary" -> ["select-secondary"]
        "accent" -> ["select-accent"]
        "ghost" -> ["select-ghost"]
        "info" -> ["select-info"]
        "success" -> ["select-success"]
        "warning" -> ["select-warning"]
        "error" -> ["select-error"]
        _ -> []
      end
    end
  end

  # hg_size 优先级高于组件的size
  defp size_class(_assigns, hg_size)  when is_binary(hg_size) do
    case hg_size do
      "xs" -> ["select-xs"]
      "sm" -> ["select-sm"]
      "md" -> ["select-md"]
      "lg" -> ["select-lg"]
      _ -> []
    end
  end
  defp size_class(assigns = %{size: size}, _hg_size) do
    case size do
      "xs" -> ["select-xs"]
      "sm" -> ["select-sm"]
      "md" -> ["select-md"]
      "lg" -> ["select-lg"]
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