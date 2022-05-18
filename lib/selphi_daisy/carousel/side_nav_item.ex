defmodule SelphiDaisy.Carousel.SideNavItem do
  @moduledoc """
  侧边nav按钮轮播项，当Carousel type=side-nav || both-nav时使用 。

  as defined by https://daisyui.com/components/carousel/
  """
  use Surface.Component, slot: "items"

  @doc "轮播项id"
  prop id, :string, required: true

  @doc "前一项"
  prop prev_id, :string, required: true

  @doc "后一项"
  prop next_id, :string, required: true


  @doc "轮播图片 <img>   "
  slot default, required: true

  def render(assigns) do
    ~F"""
    <div id={@id} class="relative w-full carousel-item">
       <#slot />
      <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
        <a href={"##{@prev_id}"} class="btn btn-circle">❮</a>
        <a href={"##{@next_id}"}  class="btn btn-circle">❯</a>
      </div>
    </div>
    """
  end

end