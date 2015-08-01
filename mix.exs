defmodule Bigcommerce.Mixfile do
  use Mix.Project

  def project do
    [app: :bigcommerce,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps,
     package: [
      contributors: ["Dania Simmons"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/Dania02525/bigcommerce-api-elixir"}
    ],
    description: """
    Elixir Bigcommerce client
    """]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :inets]]
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
    [
    {:poison, "~> 1.4.0"}
    ]
  end
end
