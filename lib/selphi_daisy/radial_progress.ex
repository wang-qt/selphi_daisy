defmodule SelphiDaisy.RadialProgress do
  @moduledoc """
  圆形进度条. https://daisyui.com/components/radial-progress/
  Radial progress needs --value CSS variable to work.
  To change the size, use --size CSS variable which has a default value of 4rem.
  To change the thickness, use --thickness CSS variable which is 10% of the size by default.

  - radial-progress	`Component`	Shows a radial progress
  """
  use Surface.Component


  @doc "进度值 0 - 100，整数"
  prop  value, :string ,required: true, default: "0"

  @doc "size CSS variable进度条大小，单位像素或rem, eg.  12rem  46px. 默认值为 5rem."
  prop  size, :string

  @doc "thickness CSS variable进度条线条宽度，单位像素或rem, eg.  12rem  46px. 默认值为 size的10%."
  prop  thickness, :string


  @doc "其他tw类，eg. bg-primary text-primary-content border-4 border-primary "
  prop class, :css_class, default: []

  def render(assigns) do
    ~F"""
    <div

        class={["radial-progress"] ++ @class}
        {...styles(assigns)}
       >
       {@value}%
    </div>
    """
  end
  defp styles(assigns ) do
    [style: value_style(assigns) <> size_style(assigns) <> thickness_style(assigns)]
  end

  defp value_style(assigns = %{value: value})  do
    "--value:#{value};"
  end
  defp size_style(assigns = %{size: size})   do
    case size do
      nil -> ""
      _ -> "--size:#{size};"
    end
  end
  defp thickness_style(assigns = %{thickness: thickness})  do
    case thickness do
      nil -> ""
      _ -> "--thickness:#{thickness}"
    end
  end



end