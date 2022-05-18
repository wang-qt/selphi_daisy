defmodule SelphiDaisy.CountdownClock do
  @moduledoc """
  倒计时组件,包含时分秒 。
  as defined by https://daisyui.com/components/carousel/
  """

  use Surface.LiveComponent

  @type_values ~w(simple-label simple-colon lg-label lg-label-down in-box)

  @doc "时钟样式"
  prop type, :string, default: "simple-label", values: @type_values


  @doc "天"
  prop day, :integer, default: 15

  @doc "小时"
  data hour, :integer, default: 23

  @doc "分钟"
  data minute, :integer, default: 59

  @doc "秒数"
  data second, :integer, default: 60


  @doc "额外的样式：eg. font-mono text-6xl "
  prop class, :css_class, default: []

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
      0 ->
         socket
         |> assign( :second, 59)
         |> dec_minute()
      _ -> assign(socket, :second, second-1)
    end
  end
  defp dec_minute(socket) do
    minute = socket.assigns.minute
    case minute  do
      0 ->
         socket
         |> assign( :minute, 59)
         |> dec_hour()
      _ -> assign(socket, :minute, minute - 1)
    end
  end
  defp dec_hour(socket) do
    hour = socket.assigns.hour
    case hour  do
      0 ->
          socket
          |> assign( :hour, 23)
          |> dec_day()
      _ -> assign(socket, :hour, hour - 1)
    end
  end
  defp dec_day(socket) do
    day = socket.assigns.day
    case day  do
      0 ->  assign(socket, :day, 00)
      _ -> assign(socket, :day, day - 1)
    end
  end


  def render(assigns = %{type: "simple-label"}) do
    ~F"""
    <span class={["countdown"] ++ @class}>
      <span style={"--value:#{@hour};"}></span>h
      <span style={"--value:#{@minute};"}></span>m
      <span style={"--value:#{@second};"}></span>s
    </span>
    """
  end
  def render(assigns = %{type: "simple-colon"}) do
    ~F"""
    <span class={["countdown"] ++ @class}>
      <span style={"--value:#{@hour};"}></span>:
      <span style={"--value:#{@minute};"}></span>:
      <span style={"--value:#{@second};"}></span>
    </span>
    """
  end
  def render(assigns = %{type: "lg-label"}) do
    ~F"""
    <div class="grid grid-flow-col gap-5 place-items-end auto-cols-max">
      <div>
        <span class="font-mono text-4xl countdown">
          <span style={"--value:#{@day};"}></span>
        </span>
        days
      </div>
      <div>
        <span class="font-mono text-4xl countdown">
          <span style={"--value:#{@hour};"}></span>
        </span>
        hours
      </div>
      <div>
        <span class="font-mono text-4xl countdown">
          <span style={"--value:#{@minute};"}></span>
        </span>
        min
      </div>
      <div>
        <span class="font-mono text-4xl countdown">
          <span style={"--value:#{@second};"}></span>
        </span>
        sec
      </div>
    </div>
    """
  end
  def render(assigns = %{type: "lg-label-down"}) do
    ~F"""
    <div class="grid grid-flow-col gap-5 text-center auto-cols-max">
      <div class="flex flex-col">
        <span class="font-mono text-5xl countdown">
          <span style={"--value:#{@day};"}></span>
        </span>
        days
      </div>
      <div class="flex flex-col">
        <span class="font-mono text-5xl countdown">
          <span style={"--value:#{@hour};"}></span>
        </span>
        hours
      </div>
      <div class="flex flex-col">
        <span class="font-mono text-5xl countdown">
          <span style={"--value:#{@minute};"}></span>
        </span>
        min
      </div>
      <div class="flex flex-col">
        <span class="font-mono text-5xl countdown">
          <span style={"--value:#{@second};"}></span>
        </span>
        sec
      </div>
    </div>
    """
  end

  def render(assigns = %{type: "in-box"}) do
    ~F"""
    <div class="grid grid-flow-col gap-5 text-center auto-cols-max">
      <div class="flex flex-col p-2 bg-neutral rounded-box text-neutral-content">
        <span class="font-mono text-5xl countdown">
          <span style={"--value:#{@day};"}></span>
        </span>
        days
      </div>
      <div class="flex flex-col p-2 bg-neutral rounded-box text-neutral-content">
        <span class="font-mono text-5xl countdown">
          <span style={"--value:#{@hour};"}></span>
        </span>
        hours
      </div>
      <div class="flex flex-col p-2 bg-neutral rounded-box text-neutral-content">
        <span class="font-mono text-5xl countdown">
          <span style={"--value:#{@minute};"}></span>
        </span>
        min
      </div>
      <div class="flex flex-col p-2 bg-neutral rounded-box text-neutral-content">
        <span class="font-mono text-5xl countdown">
          <span style={"--value:#{@second};"}></span>
        </span>
        sec
      </div>
    </div>
    """
  end

  # Public API

  # countdown_id是在组件调用是 <Countdown id="cd1" />，id属性的值
  # 状态组件必须设置 id 属性，触发 update 函数，进行秒数减一，并更新ui
  def dec(countdown_id) do
    send_update(__MODULE__, id: countdown_id)
  end


end