defmodule ElixirMixProject.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_mix_project,
      version: "0.1.0",
      elixir: "~> 1.6",
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

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:bmark, "~> 1.0.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end

   defp aliases do
    [
      c: "compile"
    ]
  end
end

defmodule Mix.Tasks.Hello do
  use Mix.Task

  def run(_) do
    Mix.shell.info "Witaj w elixirowym kalkulatorze ONP!"
  end
end