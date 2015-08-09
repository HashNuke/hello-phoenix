defmodule HelloPhoenix.Mixfile do
  use Mix.Project

  def project do
    [app: :hello_phoenix,
     version: "0.0.5",
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {HelloPhoenix, []},
     applications: app_list(Mix.env)]
  end

  defp app_list do
    [:phoenix, :phoenix_html, :cowboy, :logger, :phoenix_ecto, :postgrex]
  end

  defp app_list(:dev),  do: [:phoenix_live_reload | app_list]
  defp app_list(_),     do: app_list


  # Specifies which paths to compile per environment
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 0.14"},
     {:phoenix_ecto, "~> 0.5"},
     {:postgrex, ">= 0.0.0"},
     {:phoenix_html, "~> 1.1"},
     {:exrm, path: "/Users/HashNuke/projects/exrm"},
     {:phoenix_live_reload, "~> 0.4"},
     {:cowboy, "~> 1.0"}]
  end
end
