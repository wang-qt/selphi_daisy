defmodule SelphiDaisy.Hero.Example01 do
  @moduledoc """
  Hero 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Hero,
      height: "600px",
      title: "Centered hero",
      direction: "vertical"

  alias     SelphiDaisy.Hero.Content

  def render(assigns) do
    ~F"""
    <Hero>
      <Content class="text-center">
        <div class="max-w-md">
          <h1 class="text-5xl font-bold">Hello there</h1>
          <p class="py-6">Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi. In deleniti eaque aut repudiandae et a id nisi.</p>
          <button class="btn btn-primary">Get Started</button>
        </div>
      </Content>
    </Hero>
    """
  end

end