defmodule SelphiDaisy.Catalogue do
  @moduledoc """
  Catalogue implementation for SurfaceBootstrap.

  Allows catalogue tools to properly run examples and playgrounds provided
  by this lib.
  """

  use Surface.Catalogue

#  load_asset("assets/catalogue/app.js", as: :app_js)
#  load_asset("assets/catalogue/app.css", as: :app_css)

  @impl true
  def config() do
    [
#      head_css: """
#      <style>#{@app_css}</style>
#      """,
#      head_js: """
#      <script> #{@app_js}</script>
#      """,
      playground: [
        body: [
          style: "padding: 1.5rem; height: 100%;",
          class: "has-background-light"
        ]
      ]
    ]
  end
end
