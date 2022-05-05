defmodule Wordcount do

    def count(var) do
      String.normalize(var, :nfd) 
      |> String.replace(~r/[^0-9A-z\s]/u, "") 
      |> String.downcase()
      |> String.split()
      |> Enum.group_by(fn(x) -> x end)
      |> Enum.reduce(%{}, fn {k, v}, acc -> Map.put(acc, k, Enum.count(v)) end)
    end

    def frequencies_tasks(path) do
      path
      |> File.stream!()
      |> Enum.chunk_every(1_000)
      |> Enum.map(fn lines -> Task.async(fn -> count(Enum.join(lines)) end) end)
      |> Enum.map(fn task -> Task.await(task) end)
    end

    def frequencies(path) do
      path |> File.read!()
      |> count()
    end
end

