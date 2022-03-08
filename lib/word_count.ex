defmodule Wordcount do
    def count(var) do
      {:ok, text} = File.read(var)
      text |> String.downcase() |> String.normalize(:nfd) |> String.replace(~r/[^0-9A-z\s]/u, "") |> String.split()
      |> Enum.group_by(fn(x) -> x end)
      |> Enum.reduce(%{}, fn {k, v}, acc -> Map.put(acc, k, Enum.count(v)) end)
    end
end

