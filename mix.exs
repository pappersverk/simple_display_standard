defmodule SimpleDisplay.MixProject do
  use Mix.Project

  def project do
    [
      app: :simple_display,
      version: "0.0.1",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      source_url: "https://github.com/pappersverk/simple_display_standard/",
      deps: deps(),
      package: package()
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
      {:credo, "~> 1.0.0", only: [:dev, :test], runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package() do
    [
      name: "simple_display",
      description: "A behavior for extremely simple displays in embedded devices.",
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/pappersverk/inky"}
    ]
  end
end
