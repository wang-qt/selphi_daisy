defmodule SelphiDaisy.Carousel do
  @moduledoc """
  轮播组件Carousel 和 Carousel.Item 。

  as defined by https://daisyui.com/components/carousel/

  - carousel	`Component`	Container element
  - carousel-item	`Component`	Carousel item
  - carousel-center	`Modifier`	Snap elements to center
  - carousel-end	`Modifier`	Snap elements to end
  - carousel-vertical	`Modifier`	Vertical carousel
  """
  use Surface.Component

  @snap_align_values ~w(start center end)

  @round_values ~w(none rounded-box  rounded-t-box rounded-b-box)


  @type_values ~w(normal side-nav bottom-nav both-nav )

  @doc "轮播样式 normal：没有nav按钮，side-nav：侧边nav按钮 bottom-nav：底部nav 按钮，both-nav：侧边和底部nav按钮 "
  prop type, :string, default: "normal", values: @type_values

  @doc "type: normal有效, 轮播项对齐方式，默认左端对齐 "
  prop snap_align, :string, default: "start", values: @snap_align_values

  @doc "type: normal有效，轮播方向，默认水平 "
  prop dir, :string, default: "horizontal", values: ["horizontal", "vertical"]

  @doc "type: normal有效，圆角：默认为 round-box"
  prop round, :string, default: "rounded-box", values:  @round_values

  @doc "type: normal有效，额外的样式：eg. w-64 h-96  max-w-md p-4 space-x-4 bg-neutral "
  prop class, :css_class, default: []

  @doc "轮播项 Item , BottomNavItem或 SideNavItem. The list of columns defining the Grid"
  slot items, required: true

  def render(assigns = %{type: "normal"}) do
    ~F"""
    <div class={["carousel"]
               ++ snap_align_class(assigns)
               ++ dir_class(assigns)
               ++ round_class(assigns)
               ++ @class }>
        {#for {_, index} <- Enum.with_index(@items)}
           <#slot name="items" index={index} />
        {/for}
    </div>
    """
  end

  # type= side-nav
  def render(assigns = %{type: "side-nav"}  ) do
    ~F"""
    <div class="w-full carousel">
        {#for {_, index} <- Enum.with_index(@items)}
           <#slot name="items" index={index} />
        {/for}
    </div>
    """
  end
  # type= bottom-nav both-nav
  def render(assigns = %{type: type}  ) do
    ~F"""
    <div class="w-full carousel">
        {#for {_, index} <- Enum.with_index(@items)}
           <#slot name="items" index={index} />
        {/for}
    </div>
    <div class="flex justify-center w-full py-2 gap-2">
       {#for {item, index} <- Enum.with_index(@items)}
         <a href={"##{item.id}"} class="btn btn-xs">{index + 1}</a>
       {/for}
    </div>
    """
  end

  # 根据 default slot 自动生成 bottom 导航
  defp bottom_nav(assigns) do
    IO.puts "slot: "
    IO.inspect assigns.default
    for {item, index} <- Enum.with_index(assigns.default) do
      IO.puts "slot index:"
      IO.inspect index
      IO.puts "slot item:"
      IO.inspect item

    end


    ""
  end

  defp snap_align_class(assigns= %{snap_align: snap_align}) do
    case snap_align do
      "center" -> ["carousel-center"]
      "end" -> ["carousel-end"]
      _ -> []
    end
  end
  defp dir_class(assigns= %{dir: dir}) do
    case dir do
      "vertical" -> ["carousel-vertical"]
      _ -> []
    end
  end
  defp round_class(assigns= %{round: round}) do
    case round do
      "none" -> [ ]
      _ -> [round]
    end
  end

end