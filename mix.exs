defmodule ExParameterized.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_parameterized,
      version: "1.0.2",
      elixir: "~> 1.0",
      name: "ExParameterized",
      source_url: "https://github.com/KazuCocoa/ex_parameterized",
      description: "Simple macro for parameterized testing",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps,
      package: package
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:shouldi, "~> 0.3.0", only: :test},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.10", only: :dev}
    ]
  end

  defp package do
    [
      files: ~w(lib mix.exs README.md LICENSE),
      maintainers: ["Kazuaki Matsuo"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/KazuCocoa/ex_parameterized"}
    ]
  end
end
