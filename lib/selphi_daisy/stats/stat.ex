defmodule SelphiDaisy.Stats.Stat do
  @moduledoc """
  Stats 中的 stat 项
  """
  use Surface.Component


  @doc "其他tw类，eg. place-items-center "
  prop class, :css_class, default: []

  @doc "stat图片，Stats.Figure"
  slot figure

  @doc "stat标题，必填，Stats.Title"
  slot title, required: true

  @doc "stat 值，必填，Stats.Value"
  slot default, required: true

  @doc "stat 描述，与actions 二选一，Stats.Desc"
  slot desc

  @doc "stat 按钮 与desc 二选一，Stats.Actions"
  slot actions


  def render(assigns) do
    ~F"""
    <div class={["stat"] ++ @class }>
        <div
            :if={slot_assigned?(:figure)}
            class={["stat-figure"] ++ slot_class(@figure)}>

           <#slot name="figure" />
        </div>

        <div class={["stat-title"] ++ slot_class(@title)}>
          <#slot name="title" />
        </div>

        <#slot />

        <div
            :if={slot_assigned?(:desc)}
            class={["stat-desc"] ++ slot_class(@desc)}>

           <#slot name="desc" />
        </div>
        <div
            :if={slot_assigned?(:actions)}
            class={["stat-actions"] ++ slot_class(@actions)}>

           <#slot name="actions" />
        </div>

    </div>
    """
  end

  defp slot_class(slot) do
    #slot :
    #[
    #  %{
    #    __slot__: :figure,
    #    class: ["px-10", "pt-10"],
    #    inner_block: #Function<2.106645797/2 in SelphiDaisy.Card.Example02.render/1>
    #  }
    #]
    case slot do
      [%{class: class}] ->
        class
      _ ->
        []
    end
  end
end