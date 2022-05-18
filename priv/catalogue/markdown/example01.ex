defmodule SelphiDaisy.Markdown.Example01 do
  @moduledoc """
  Markdown 组件.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Markdown,
      height: "1800px",
      title: " Markdown "

  alias Surface.Components.Markdown

  def render(assigns) do

    ~F"""
    <div class=" flex flex-col min-h-[6rem] min-w-[18rem]  items-start justify-center   ">
    <#Markdown class="prose prose-base prose-a:text-blue-600 hover:prose-a:text-red-500">
    ### Heading 3

    ## Heading 2

    # Heading 1

    ---

    _This text is italic_

    _**This text is itatic and bold**_

    ---

    ### Links

    * [Source](https://github.com/surface-ui/surface)
    * [Docs](https://surface-ui.org/documentation)

    ### Tables

    | Id     | Name           | Value      |
    | -------|----------------| ----------:|
    | 1      | The first item |     $10,00 |
    | 2      | The second     |  $1.200,00 |
    | 3      | The Third      |       $130 |

    ---

    ### Lists

    1. Item 1
    2. Item 2
      * Subitem 1
      * Subitem 2

    ---

    > **Note**: This `markdown` text was
    > converted into `HTML` at compile-time
    > using the `#Markdown` component.
    </#Markdown>
    </div>
    """
  end



end