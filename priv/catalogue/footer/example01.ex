defmodule SelphiDaisy.Footer.Example01 do
  @moduledoc """
  Footer 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Footer,
      height: "400px",
      title: "footer",
      direction: "vertical"

  alias     SelphiDaisy.Footer.Item

  def render(assigns) do
    ~F"""
    <Footer >
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
      <Item>
        <a class="link link-hover">Terms of use</a>
        <a class="link link-hover">Privacy policy</a>
        <a class="link link-hover">Cookie policy</a>
      </Item>
    </Footer>
    """
  end


end