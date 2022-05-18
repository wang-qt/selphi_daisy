defmodule SelphiDaisy.Hero.Example02 do
  @moduledoc """
  Hero 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Hero,
      height: "800px",
      title: "Hero with figure",
      direction: "vertical"

  alias     SelphiDaisy.Hero.Content

  def render(assigns) do
    ~F"""
    <Hero>
      <Content class="flex-col sm:flex-row">
        <img src="https://api.lorem.space/image/movie?w=260&h=400" class="max-w-sm rounded-lg shadow-2xl">
        <div>
          <h1 class="text-5xl font-bold">Box Office News!</h1>
          <p class="py-6">Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi. In deleniti eaque aut repudiandae et a id nisi.</p>
          <button class="btn btn-primary">Get Started</button>
        </div>
      </Content>
    </Hero>
    """
  end

end