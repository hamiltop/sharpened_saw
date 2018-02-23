defmodule ElixirExercises.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_exercises,
     version: "0.0.1",
     elixir: "~> 1.6.0",
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [ applications: [],
      mod: {ElixirExercises, []} ]
  end

  # List all dependencies in the format:
  #
  # {:foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    []
  end
end
