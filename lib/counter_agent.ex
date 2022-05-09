defmodule CounterAgent do
  @moduledoc """
  Defines a counter using Agents
  """
  use Agent

  def star(init_value) do
    Agent.start(fn -> init_value end)
  end

  def value(pid) do
    # Agent.get(pid, fn -> state end)
    Agent.get(pid, & &1)
  end

  def inc(pid) do
    # Agent.update(pid, fn -> state +1 end)
    Agent.update(pid, &(&1 + 1))
  end
end
