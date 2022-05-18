defmodule SelphiDaisy.Form.PasswordSwap do
  @moduledoc """
  PasswordSwap 输入框, 切换 密码/明文 显示的 密码框。
  状态组件，点击图标来切换 密码/明文 状态。
  - https://hexdocs.pm/phoenix_html/Phoenix.HTML.Form.html#password_input/3
  - https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/password
  """
  use Surface.LiveComponent
  import SelphiDaisy.Gettext
  import SelphiDaisy.Component, only: [include: 1, include: 2]

  import SelphiDaisy.Form.Utils
  alias Surface.Components.Form.{Field, FieldContext, PasswordInput,TextInput, ErrorTag, Label}
  alias SelphiDaisy.Heroicons
  alias SelphiDaisy.Swap

  import Phoenix.HTML.Form, only: [input_value: 2]

  # Surface.LiveComponent 已经包含 id定义
  include(PasswordInput, except: [:id])

  # mobile按钮大小，不设置默认为 md
  @size_values  ~w(lg md  sm  xs  )

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


  @doc """
  密码用 密文显示，默认为true
  """
  data  cipher, :boolean , default: true


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
      [ "input","w-full" ]
      ++ border_class(assigns)
      ++ color_class(assigns)
         ++ size_class(assigns, hg_size) )

    # !! 模版中调用函数，上一个函数中的 context 不能使用，
    # 需要从assigns的__context__中重新获取，否则字段没有关联的 form
    # 调用SelphiDaisy.Form.Utils.get_form(assigns)
    #  使用 <Context get={Surface.Components.Form, form: form}></Context> 无效！！
    form = get_form(assigns)

    #  设置 value 有什么效果？？
#    value = input_value(form, :password)

    ~F"""
    <FieldContext  name={@field} >
      <div
        class={
        [
          "control",
          "has-icons-right",
          "is-small": @size == "xs" || @size == "sm",
          "is-medium": @size == "md",
          "is-large": @size == "lg",
          "has-icons-left": @icon_left,
          "is-loading": @loading
        ] ++ control_class(assigns)
        }>
           <PasswordInput
             {...included_props(assigns)}
             opts={
             [
                placeholder: @placeholder,
                disabled: @disabled,
                readonly: @readonly,
                maxlength: @maxlength,
                minlength: @minlength,
             ] ++ @opts}
             form={form}
             value={input_value(@form, @field)}
           />


         {#if is_binary(@icon_left)}
          <span class="icon  is-left">
           <Heroicons name={@icon_left} size={icon_size(assigns,hg_size)} />
          </span>
        {/if}


        <span class="icon  is-right ">
            <Swap    id={"swap" <> @id} to={"#" <> @id}
                    js_event_name="swap_password"
                    animate="rotate"
             >
              <Heroicons name="eye"   class="swap-on"/>
              <Heroicons name="eye-off"   class="swap-off" />
            </Swap>
        </span>
      </div>
    </FieldContext>
    """
  end

  # 辅助函数
  defp border_class(assigns = %{bordered: bordered}) do
    if bordered do
      ["input-bordered"]
    else
      []
    end

  end
  defp border_class(assigns ) do
    []
  end

  defp size_class(_assigns, hg_size) when is_binary(hg_size) do
    case hg_size do
      "xs" -> ["input-xs"]
      "sm" -> ["input-sm"]
      "md" -> ["input-md"]
      "lg" -> ["input-lg"]
      _ -> []
    end
  end
  defp size_class(assigns = %{size: size}, _hg_size) do
    case size do
      "xs" -> ["input-xs"]
      "sm" -> ["input-sm"]
      "md" -> ["input-md"]
      "lg" -> ["input-lg"]
      _ -> []
    end
  end
  defp size_class(assigns, hg_size ) do
    []
  end

  defp color_class(assigns = %{color: color}) do
    if has_error?(assigns) do
      ["input-error"]
    else
      case color do
        "primary" -> ["input-primary"]
        "secondary" -> ["input-secondary"]
        "accent" -> ["input-accent"]
        "info" -> ["input-info"]
        "success" -> ["input-success"]
        "warning" -> ["input-warning"]
        "error" -> ["input-error"]
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