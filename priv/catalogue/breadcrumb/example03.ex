defmodule SelphiDaisy.Breadcrumb.Example03 do

  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Breadcrumb,
      height: "150px",
      title: "link with icon"


  @moduledoc """
   使用slot添加图标
  """

  def render(assigns) do
    ~F"""
    <Breadcrumb class="-intro-x">
      <Breadcrumb.Item link_type="link"  label="home" to="#">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="w-4 h-4 mr-2 stroke-current">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 7v10a2 2 0 002 2h14a2 2 0 002-2V9a2 2 0 00-2-2h-6l-2-2H5a2 2 0 00-2 2z"></path>
        </svg>
            Home
      </Breadcrumb.Item>

      <Breadcrumb.Item  link_type="live_redirect" label="users" to="#/users">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="w-4 h-4 mr-2 stroke-current">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 7v10a2 2 0 002 2h14a2 2 0 002-2V9a2 2 0 00-2-2h-6l-2-2H5a2 2 0 00-2 2z"></path>
        </svg>
            Documents
      </Breadcrumb.Item>

      <Breadcrumb.Item label="John Doe" >
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="w-4 h-4 mr-2 stroke-current">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 13h6m-3-3v6m5 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path>
        </svg>
          Add Document
      </Breadcrumb.Item>
    </Breadcrumb>
    """
  end

end