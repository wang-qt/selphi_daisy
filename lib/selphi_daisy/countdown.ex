defmodule SelphiDaisy.Countdown do
  @moduledoc """
  秒数 倒计时组件 。
  Countdown gives you a transition effect of changing numbers
  You need to change to --value CSS variable using JS. Value must be a number between 0 and 99
  as defined by https://daisyui.com/components/carousel/
  """
  use Surface.LiveComponent




  @doc "秒数"
  data second, :integer, default: 60

  @doc "额外的样式：eg. font-mono text-6xl "
  prop class, :css_class, default: []

#  def mount( socket) do
#    if connected?(socket) do
#      IO.puts "start timer!!"
#      :timer.send_interval(1000, self(), :tick)
#    end
#
#    {:ok, assign(socket, date: :calendar.local_time())}
#  end

  def update(assigns, socket) do
    {:ok,
        socket
        |> assign(assigns) # 此句不能少，否则class找不到定义
        |> dec_second()
    }
  end
  defp dec_second(socket) do
    second = socket.assigns.second
    case second  do
      0 -> assign(socket, :second, 59)
      _ -> assign(socket, :second, second-1)
    end

  end

  def render(assigns) do
    ~F"""
    <span class={["countdown"] ++ @class}>
      <span style={"--value:#{@second};"}></span>
    </span>
    """
  end

  # Public API

  # countdown_id是在组件调用是 <Countdown id="cd1" />，id属性的值
  # 状态组件必须设置 id 属性
  def dec(countdown_id) do
    send_update(__MODULE__, id: countdown_id)
  end


end