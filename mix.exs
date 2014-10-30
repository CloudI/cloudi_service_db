defmodule CloudIServiceDb do
  use Mix.Project

  def project do
    [app: :cloudi_service_db,
     version: "1.4.0-rc.4",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:cloudi_core, "~> 1.4.0-rc.4"},
     {:trie, "~> 1.4.0-rc.4"},
     {:uuid, "~> 1.4.0-rc.4", hex: :uuid_erl}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework Database (in-memory/testing/generic)"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     contributors: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_db"}]
   end
end
