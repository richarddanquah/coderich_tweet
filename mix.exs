defmodule CoderichTweet.MixProject do
  use Mix.Project

  def project do
    [
      app: :coderich_tweet,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {CoderichTweet.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [

      {:credo, "~> 1.6"},
      {:quantum, "~> 3.5"},
      {:extwitter, "~> 0.13.1"}
    ]
  end
end
