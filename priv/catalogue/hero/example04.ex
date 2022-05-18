defmodule SelphiDaisy.Hero.Example04 do
  @moduledoc """
  Hero 使用示例.
  """
  use Surface.Catalogue.Example,
      subject: SelphiDaisy.Hero,
      height: "800px",
      title: "Hero with form",
      direction: "vertical"

  alias     SelphiDaisy.Hero.Content

  def render(assigns) do
    ~F"""
    <Hero>
      <Content class="flex-col sm:flex-row-reverse">
        <div class="text-center sm:text-left">
          <h1 class="text-5xl font-bold">Login now!</h1>
          <p class="py-6">Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi. In deleniti eaque aut repudiandae et a id nisi.</p>
        </div>
        <div class="card flex-shrink-0 w-full max-w-sm shadow-2xl bg-base-100">
        <div class="card-body">
          <div class="form-control">
            <label class="label">
              <span class="label-text">Email</span>
            </label>
            <input type="text" placeholder="email" class="input input-bordered">
          </div>
          <div class="form-control">
            <label class="label">
              <span class="label-text">Password</span>
            </label>
            <input type="text" placeholder="password" class="input input-bordered">
            <label class="label">
              <a href="#" class="label-text-alt link link-hover">Forgot password?</a>
            </label>
          </div>
          <div class="form-control mt-6">
            <button class="btn btn-primary">Login</button>
          </div>
        </div>
        </div>
      </Content>
    </Hero>
    """
  end

end