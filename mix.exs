defmodule FS.Mixfile do
  use Mix.Project

  def project do
    [app: :fs,
     version: "6.9.0",
     description: "FS Native Listener (Mac Windows Linux)",
     deps: deps(),
     docs: [],
     compilers: [:rebar3],
     package: package()]
  end

  defp package do
    [name: :fs,
     files: ["include", "priv", "src", "c_src", "LICENSE", "README.md", "rebar.config"],
     maintainers: ["Vladimir Kirillov", "Namdak Tonpa"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/synrc/fs"}]
   end

  defp deps do
    [{:ex_doc, "~> 0.11", only: :dev},
     {:mix_rebar3, "~> 0.1", runtime: false}]
  end
end
