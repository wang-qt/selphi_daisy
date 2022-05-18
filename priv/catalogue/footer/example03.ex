defmodule SelphiDaisy.Footer.Example03 do
  @moduledoc """
  Footer 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Footer,
      height: "400px",
      title: "Footer with a form",
      direction: "vertical"

  alias     SelphiDaisy.Footer.Item

  def render(assigns) do
    ~F"""
    <Footer color="base-200">
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
      <Item title="Newsletter">
        <div class="form-control w-80">
          <label class="label">
            <span class="label-text">Enter your email address</span>
          </label>
          <div class="relative">
            <input type="text" placeholder="username@site.com" class="w-full pr-16 input input-bordered">
            <button class="absolute top-0 right-0 rounded-l-none btn btn-primary">Subscribe</button>
          </div>
        </div>
      </Item>
    </Footer>
    """
  end


end