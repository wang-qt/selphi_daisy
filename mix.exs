defmodule SelphiDaisy.MixProject do
  use Mix.Project

  def project do
    [
      app: :selphi_daisy,
      version: "0.1.0",
#      build_path: "../../_build",
#      config_path: "../../config/config.exs",
#      deps_path: "../../deps",
#      lockfile: "../../mix.lock",
      elixir: "~> 1.12",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(:dev), do: ["lib"] ++ catalogues()
  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      # {:sibling_app_in_umbrella, in_umbrella: true}
      {:surface, "~> 0.7.4"},
      {:surface_catalogue, "~> 0.4.1"},
      {:ecto, "~> 3.8.2"},
      {:gettext, "~> 0.18"},
      {:surface_markdown, "~> 0.4.0"},
      {:tzdata, "~> 1.1.1"},     # 在 congfig.exs 添加 config :elixir, :time_zone_database, Tzdata.TimeZoneDatabase
    ]
  end

  defp aliases do
    [
      dev: "run --no-halt dev.exs",
    ]
  end

  def catalogues do
    [
      "priv/catalogue",
    ]
  end
end
