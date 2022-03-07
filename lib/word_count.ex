defmodule Wordcount do
    def count(var) do
      {:ok, text} = File.read(var)
      text |> String.downcase() |> String.normalize(:nfd) |> String.replace(~r/[^0-9A-z\s]/u, "") |> String.split()
      |> Enum.frequencies()
    end
end

