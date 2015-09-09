defmodule GymPeep.Mixfile do
  use Mix.Project

  def project do
    [app: :gym_peep,
     version: "0.0.1",
     elixir: "~> 1.0",
     escript: [main_module: GymPeep],
     deps: deps,
     lingex_opts: lingex_opts]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :httpoison],
     mod: {GymPeep, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:floki, "~> 0.0.5"},
     {:httpoison, "~> 0.5"},
     {:cauldron, "~> 0.1.5"},
     {:lingex, github: "mt-inside/lingex"}]
  end

  def lingex_opts do
    [build_host: "build.erlangonxen.org",
     username: "test",
     password: "test"]
  end
end
