defmodule SelphiDaisy.Breadcrumb.Example01 do
  @moduledoc """
  使用 Breadcrumb.Item.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Breadcrumb,
      height: "90px",
      title: "Using renderless slotables ",
      direction: "vertical"

   alias    SelphiDaisy.Breadcrumb.Item
  def render(assigns) do
    ~F"""
    <Breadcrumb  class="-intro-x">
      <Item link_type="link" label="home" to="#" class="text-lg"  opts={ tabindex: "0" } >
         Home
      </Item>
      <Item link_type="live_redirect" label="users" to="#/users" opts={ tabindex: "0" } >
        Users
      </Item>
      <Item link_type="live_patch" label="John Doe" to="#users/1234/show" opts={ tabindex: "0" } >
        Show
      </Item>
      {!-- 跳转到当前地址，相当于刷新 --}
      <Item link_type="live_patch" label="John Doe" to="#users/1234/edit" class="text-secondary" opts={ tabindex: "0" } >
        John Doe
      </Item>
    </Breadcrumb>
    """
  end

end