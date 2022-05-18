defmodule SelphiDaisy.Card.Body.Title do
  @moduledoc """
  Card body title component
  """
  use Surface.Component

  @doc "Card标题，纯文本"
  prop title, :string

  slot default

  # slot不存在则使用 title，二者必须有一个存在
  def render(assigns) do
    ~F"""
    <h2 class="card-title">
      <#slot> {@title} </#slot>
    </h2>
    """
  end

end