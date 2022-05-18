defmodule SelphiDaisy.Footer.Example05 do
  @moduledoc """
  Footer 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Footer,
      height: "200px",
      title: "Footer with copyright text",
      direction: "vertical"

  alias    SelphiDaisy.Footer.Item

  def render(assigns) do
    ~F"""
    <Footer color="base-300" class="footer-center">
      <Item>
        <p>Copyright © 2022 - All right reserved by ACME Industries Ltd</p>
      </Item>
    </Footer>
    """
  end


end