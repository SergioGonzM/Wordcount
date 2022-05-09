defmodule CalculatorAgent do
  @moduledoc """
  Defomes a calculator using Agents
  """
  use Agent

  def init(init_value) do
    Agent.start(fn -> init_value end)
  end

  def sum(pid, val), do: Agent.update(pid, fn state -> state + val end)
  def sub(pid, val), do: Agent.update(pid, fn state -> state - val end)
  def mult(pid, val), do: Agent.update(pid, fn state -> state * val end)
  def div(pid, val), do: Agent.update(pid, fn state -> state / val end)

  def state(pid) do
    Agent.get(pid, fn value -> value end)
  end
end
