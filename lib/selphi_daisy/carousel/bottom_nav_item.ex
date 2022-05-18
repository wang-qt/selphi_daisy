defmodule SelphiDaisy.Carousel.BottomNavItem do
  @moduledoc """
  底部nav按钮轮播项，当Carousel type=bottom-nav 时使用 。

  as defined by https://daisyui.com/components/carousel/
  """
  use Surface.Component, slot: "items"

  @doc "轮播项id"
  prop id, :string, required: true

  @doc """
   轮播图片 <img>，图片必须带 class="w-full"
  """
  slot default, required: true

  def render(assigns) do
    ~F"""
    <div id={@id} class="w-full carousel-item">
       <#slot />
    </div>
    """
  end

end