defmodule Network.MixProject do
  use Mix.Project

  def project do
    [
      app: :network,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Network, nil}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:packet, path: "../packet"},
      {:network_node, path: "../network_node"}
    ]
  end
end
