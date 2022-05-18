defmodule SelphiDaisy.Countdown.Example02 do
  @moduledoc """
  countdown示例：large text.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Countdown,
      height: "100px",
      title: "Countdown"

  # example 是 liveview，连接后启动 timer，每秒给自己发送一个 :tick消息
  def mount( _params, _session,socket) do
    if connected?(socket) do
      IO.puts "start timer!!"
      :timer.send_interval(1000, self(), :tick)
    end

    {:ok, socket}
  end

  def render(assigns) do
    ~F"""
    <div class="flex min-h-[6rem] min-w-[24rem] max-w-4xl items-center justify-center"  >
       <Countdown id="cd2" class="font-mono text-6xl" />
    </div>
    """

  end

  # 收到tick消息，调用 Countdown的公共api dec，来减少一秒
  def handle_info(:tick, socket) do
    Countdown.dec("cd2")
    {:noreply, socket}
  end

end