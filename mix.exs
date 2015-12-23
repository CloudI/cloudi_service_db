defmodule CloudIServiceDb do
  use Mix.Project

  def project do
    [app: :cloudi_service_db,
     version: "1.5.1",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:cloudi_core, "~> 1.5.1"},
     {:trie, "~> 1.5.1"},
     {:uuid, "~> 1.5.1", hex: :uuid_erl}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework Database (in-memory/testing/generic)"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_db"}]
   end
end
