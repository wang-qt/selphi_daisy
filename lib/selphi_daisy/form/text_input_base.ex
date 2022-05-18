defmodule SelphiDaisy.Form.TextInputBase do
  @moduledoc"""
    适用于 TextInput, ColorInput, DateInput  等最终生成 <input />标签等组件。
  """
  defmacro __using__(_) do
    quote do
      use  SelphiDaisy.Component
      import SelphiDaisy.Form.Utils
      alias Surface.Components.Form.{Field, FieldContext, ErrorTag, Label}

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




      # 组件本身实现 render_control(assigns, hg_size )
      #



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

  end

end