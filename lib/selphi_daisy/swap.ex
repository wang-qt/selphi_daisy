defmodule SelphiDaisy.Swap do
  @moduledoc """
  swap 组件，切换显示不同组件(icon).

  as defined by https://daisyui.com/components/swap/

  - swap	`Component`	Container element
  - swap-on	`Component`	The child element that should be visible when checkbox is checked or when swap is active
  - swap-off	`Component`	The child element that should be visible when checkbox is not checked or when swap is not active
  - swap-indeterminate	`Component`	The child element that should be visible when checkbox is indeterminate
  - swap-active	`Modifier`	Activates the swap (no need for checkbox)
  - swap-rotate	`Modifier`	Adds rotate effect to swap
  - swap-flip	`Modifier`	Adds flip effect to swap


  """
  use Surface.LiveComponent
#  use Surface.Component

  alias Phoenix.LiveView.JS



  @doc "swap点击后，向目标发送 swap_toggle js事件，js 在事件中处理 "
  prop to, :string, default: ""

  @doc """
  前端js 事件名称，在 app.js 中添加事件处理函数
  window.addEventListener("swap_toggle",
        e => {
                 console.log("target swap_toggle!", e.target);
                 if(e.target.type == "text"){
                   e.target.type="password";
                 }else{
                   e.target.type="text";
                }
  })
  """
  prop js_event_name, :string, required: true, default: "swap_toggle"


  @doc "动效，none：无动效， rotate：旋转 flip：反转"
  prop animate, :string, default: "none", values: ["none", "rotate", "flip"]

  @doc "定制label容器的样式，eg. btn btn-circle"
  prop class, :css_class, default: []

  @doc "Add arbitrary attrs like multiple phx-value-* fields"
  prop opts, :keyword, default: []


  @doc "状态，active: true 显示 swap-on, 否则显示 swap-off"
  data active, :boolean, default: true


  @doc "定义两组元素，一组 swap-on， 一组为swap-off "
  slot default

   # :on-click={@click_toggle}
  def render(assigns) do
    ~F"""
    <label
        {...@opts}
        class={
           [
            "swap",
            "swap-active": @active
           ]
             ++ animate_class(assigns) ++ @class }
          phx-click={
           JS.push("toggle",target: @myself)
           |> JS.dispatch("#{@js_event_name}", to: "#{@to}") }
    >
         <#slot />
    </label>
    """
  end


  # 默认事件处理器
  def handle_event("toggle", _, socket = %{ assigns: %{active: active}}) do
    IO.puts  "Swap  toggle event"

    {:noreply, assign(socket, active: !active)}
  end


  #
  defp animate_class(assigns = %{animate: animate}) do
    case animate do
      "none" -> []
      "rotate" -> ["swap-rotate"]
      "flip" -> ["swap-flip"]
    end
  end
end