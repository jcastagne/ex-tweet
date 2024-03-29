defmodule ExTweet.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_tweet,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ExTweet.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.1"},
      {:quantum, "~> 2.3"},
      {:extwitter, "~> 0.9.5"},
      {:oauther, "~> 1.1"},
      {:poison, "~> 3.0"},
      {:mock, "~> 0.3.3"},
      {:meck, "~> 0.8.13"},
      {:mix_test_watch, "~> 0.9.0"},
      {:file_system, "~> 0.2.7"}
    ]
  end
end
