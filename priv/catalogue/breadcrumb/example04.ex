defmodule SelphiDaisy.Breadcrumb.Example04 do

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Breadcrumb,
      height: "90px",
      title: "breadcrumbs overflow scroll",
      direction: "vertical"


   alias   SelphiDaisy.Breadcrumb.Item

  @moduledoc """
   水平滚动，使用组件别名` alias    SelphiDaisy.Breadcrumb.Item`
  """

  def render(assigns) do
    ~F"""
    <Breadcrumb  class="-intro-x max-w-lg text-sm">
      <Item link_type="link">
           If you set max-width
      </Item>
      <Item link_type="live_redirect">
            or the list
      </Item>

      <Item link_type="live_redirect">
        gets larger than
      </Item>

      <Item link_type="live_patch">
           the container
      </Item>

      <Item  link_type="live_patch" >
         it will scroll
      </Item>
    </Breadcrumb>
    """
  end

end