defmodule SelphiDaisy.Hero.Example05 do
  @moduledoc """
  Hero 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Hero,
      height: "900px",
      title: "Hero with overlay image",
      direction: "vertical"

  alias     SelphiDaisy.Hero.Content

  def render(assigns) do
    ~F"""
    <Hero overlay
      opts={style: "background-image: url(https://api.lorem.space/image/fashion?w=1000&h=800);"}
      class="rounded"
    >
      <Content class="text-center text-neutral-content">
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