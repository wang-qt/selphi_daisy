defmodule SelphiDaisy.Form.Utils do

  import Surface, only: [slot_assigned?: 1 ]

  @doc "Gets the form from the context. Works with a `Surface.Components.Form` and `SurfaceBulma.Form`."
  def get_form(%{__context__: context}) do
    case context do
      %{{Surface.Components.Form, :form} => form} -> form
      _ -> nil
    end
  end

  # 是否显示 校验成功 图标。显示条件：1.无右侧图标 2. 输入有变化 3.字段校验成功
  def display_valid_icon?(assigns) do
    !Map.get(assigns, :icon_right)
    && has_change?(assigns)
    && !has_error?(assigns)
  end
  # 是否显示 校验失败 图标。显示条件：1.无右侧图标 2.字段校验失败
  def display_error_icon?(assigns) do
    !Map.get(assigns, :icon_right)
    && has_error?(assigns)
  end

  # 字段是否有错误
  def has_error?(assigns) do
    get_form(assigns)
    |> field_has_error?(assigns.field)
  end

  @doc "Helper function used by the form controls"
  def field_has_error?(%{source: %{errors: errors}}, field) do
    Enum.any?(errors, fn {field_name, _} ->
      field_name == field
    end)
  end
  def field_has_error?(_not_form, _field), do: false



  # 字段是否有变化
  def has_change?(assigns) do
    get_form(assigns)
    |> field_has_change?(assigns.field)
  end

  @doc "Helper function used by the form controls"
  def field_has_change?(%{source: source}, field) when is_map(source) do
    Ecto.Changeset.get_change(source, field, false)
  end

  def field_has_change?(_not_form, _field), do: false

  # form input组件 addon是否存在
  def has_addons?(assigns) do
    slot_assigned?(:left_addon) || slot_assigned?(:right_addon)
  end

  # 图标size
  def icon_size(assigns = %{size: size}, nil) do
    case size do
      "xs" -> "4"
      "sm" -> "5"
      "md" -> "6"
      "lg" -> "8"
      _ -> "6"
    end
  end
  def icon_size(_assigns , hg_size) do
    case hg_size do
      "xs" -> "4"
      "sm" -> "5"
      "md" -> "6"
      "lg" -> "8"
      _ -> "6"
    end
  end
  def icon_size(assigns, hg_size ) do
    "6"
  end


end