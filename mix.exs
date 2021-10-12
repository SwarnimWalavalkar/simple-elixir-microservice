defmodule SimpleElixirMicroservice.MixProject do
  use Mix.Project

  def project do
    [
      app: :simple_elixir_microservice,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :cowboy, :plug, :poison],
      mod: {SimpleElixirMicroservice, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 2.4"},
      {:plug, "~> 1.6"},
      {:poison, "~> 3.1"},
      {:plug_cowboy, "~> 2.0"}
    ]
  end
end
