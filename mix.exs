defmodule Tomato.Mixfile do
  use Mix.Project

  def project do
    [
      app: :tomato,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      elixirc_paths: elixirc_paths(Mix.env),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp elixirc_paths(:test), do: ["test/support", "lib"]
  defp elixirc_paths(_),     do: ["lib"]

  defp deps do
    [
      {:httpoison, "~> 1.0.0"},
      {:poison, "~> 3.1.0"},
      {:mox, "~> 0.4", only: :test},
    ]
  end
end
