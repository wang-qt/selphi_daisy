defmodule SelphiDaisy.Footer.Example08 do
  @moduledoc """
  Footer 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Footer,
      height: "600px",
      title: "Footer with 2 rows",
      direction: "vertical"

  alias    SelphiDaisy.Footer.Item

  def render(assigns) do
    ~F"""
    <Footer class="grid-rows-2">
      <Item title="Services">
        <a class="link link-hover">Branding</a>
        <a class="link link-hover">Design</a>
        <a class="link link-hover">Marketing</a>
        <a class="link link-hover">Advertisement</a>
      </Item>
      <Item title="Company">
        <a class="link link-hover">About us</a>
        <a class="link link-hover">Contact</a>
        <a class="link link-hover">Jobs</a>
        <a class="link link-hover">Press kit</a>
      </Item>
      <Item title="Legal">
        <a class="link link-hover">Terms of use</a>
        <a class="link link-hover">Privacy policy</a>
        <a class="link link-hover">Cookie policy</a>
      </Item>
      <Item title="Social">
        <a class="link link-hover">Twitter</a>
        <a class="link link-hover">Instagram</a>
        <a class="link link-hover">Facebook</a>
        <a class="link link-hover">Github</a>
      </Item>
      <Item title="Explore">
        <a class="link link-hover">Features</a>
        <a class="link link-hover">Enterprise</a>
        <a class="link link-hover">Security</a>
        <a class="link link-hover">Pricing</a>
      </Item>
      <Item title="Apps">
        <a class="link link-hover">Mac</a>
        <a class="link link-hover">Windows</a>
        <a class="link link-hover">iPhone</a>
        <a class="link link-hover">Android</a>
      </Item>

    </Footer>
    """
  end


end