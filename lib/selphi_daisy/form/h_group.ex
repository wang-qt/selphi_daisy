defmodule SelphiDaisy.Form.HGroup do
  @moduledoc """
  Structural component that creates horizontal control groups.
  As defined here: https://bulma.io/documentation/form/general/#form-group

  You cannot use labels on the internal form controls or it will break the layout.

  水平组件组容器，把多个组件组合成一行。响应式mobile为垂直，desk为水平。
  """
  use SelphiDaisy.Component
  alias Surface.Components.Form.{Label}

  # mobile按钮大小，不设置默认为 md
  @size_values  ~w( xs sm  md  lg )

  @doc "组件组的标题"
  prop caption, :string

  @doc """
  组件组的大小
  """
  prop size, :string, values: @size_values

  @doc "添加到field-body 的class"
  prop body_class, :css_class, default: []

  @doc "添加到 field  的class"
  prop  class, :css_class, default: []

  slot default

  def render(assigns) do
    ~F"""
    <div class={["field", "is-horizontal"] ++ @class}>
      <div class={["field-label"] ++ caption_size_class(assigns)}>
        <Label :if={@caption} class="caption">{@caption}</Label>
      </div>
      <div class={["field-body"] ++ @body_class}>
       <Context   put={__MODULE__, is_horizontal: true, size: @size}>
         <#slot  />
       </Context>
      </div>
    </div>
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

end