defmodule SelphiDaisy.Footer.Item do
  @moduledoc """
  Footer.Item
  """
  use Surface.Component


  @doc "Item 标题，可选 "
  prop title, :string

  @doc "其他tw类, eg. footer-center  "
  prop class, :css_class, default: []


  @doc " Footer.Item "
  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class={@class}>
      <span  :if={@title} class="footer-title">{@title}</span>

      <#slot />

    </div>
    """
  end

end