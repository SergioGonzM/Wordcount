defmodule CalculatorAgent do
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

    defp calc(current_value) do
        receive do
          {:sum, value} ->
            current_value + value
    
          {:sub, value} ->
            current_value - value
    
          {:mult, value} ->
            current_value * value
    
          {:div, value} ->
            current_value / value
    
          {:state, pid} ->
            send(pid, {:state, current_value})
            current_value
    
          _ ->
            IO.puts("Invalid request")
        end
        |> calc()
      end

  end