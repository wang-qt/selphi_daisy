defmodule SelphiDaisy.Carousel.Item do
  @moduledoc """
  轮播项 Carousel.Item 。

  as defined by https://daisyui.com/components/carousel/
  """

  use Surface.Component, slot: "items"

  @doc "Carousel.type=normal有效，额外的样式：eg. w-full h-full w-1/2   img的rounded-box "
  prop class, :css_class, default: []

  @doc "轮播图片 <img>"
  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class={["carousel-item"]
               ++ @class }>
       <#slot />
    </div>
    """
  end

end