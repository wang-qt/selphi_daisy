defmodule SelphiDaisy.Markdown do
  @moduledoc """
  这个组件是为了测试 Surface.Components.Markdown，请直接使用
  Surface.Components.Markdown
  """
  use Surface.Component

  alias Surface.Components.Markdown

  @doc "The CSS class for the wrapping `<div>`"
  prop class, :string

  @doc "Removes the wrapping `<div>`, if `true`"
  prop unwrap, :boolean, static: true, default: false

  @doc """
  Keyword list with options to be passed down to `Earmark.as_html/2`.

  For a full list of available options, please refer to the
  [Earmark.as_html/2](https://hexdocs.pm/earmark/Earmark.html#as_html/2)
  documentation.
  """
  prop opts, :keyword, static: true, default: []

  @doc "The markdown text to be translated to HTML"
  slot default


  def render(assigns) do
    ~F"""
    """
  end

end