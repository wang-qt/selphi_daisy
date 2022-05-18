defmodule SelphiDaisy.Breadcrumb.Example02 do

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Breadcrumb,
      height: "150px",
      title: "As proplist "

  alias SelphiDaisy.Button

  @moduledoc """
    Done in assigns:
    ```
    breadcrumbs = [
      %{
        link_type: "link",
        to: "/",
        label: "首页"
      },
      %{
        link_type: "live_redirect",
        to: "#users",
        label: "用户"
      },
      %{
        link_type: "live_patch",
        to: "#/users/1234",
        label: "John Doe",
      }
    ]
    ```
  """

  def render(assigns) do
    breadcrumbs = [
      %{
        link_type: "link",
        to: "/",
        label: "首页"
      },
      %{
        link_type: "live_redirect",
        to: "#users",
        label: "用户"
      },
      %{
        link_type: "live_patch",
        to: "#/users/1234",
        label: "John Doe",
      }
    ]

    ~F"""
    <Breadcrumb  breadcrumbs={breadcrumbs} class="intro-x" />
    """
  end

end