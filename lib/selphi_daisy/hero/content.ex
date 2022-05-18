defmodule SelphiDaisy.Hero.Content do
  @moduledoc """
  Hero内容区
  """
  use Surface.Component

  @doc "default"
  slot default, required: true

  @doc "其他tw类, 添加到  hero-content所在的div,eg. text-center flex-col hero-content lg:flex-row "
  prop class, :css_class, default: []

  def render(assigns) do
    ~F"""
    <div class={["hero-content"] ++ @class}>

       <#slot />

    </div>
    """
  end

end