defmodule CounterAgent do
    use Agent

    def star(init_value) do
        Agent.start(fn -> init_value end)
    end

    def value(pid) do
        Agent.get(pid, &(&1)) #Agent.get(pid, fn -> state end)
    end

    def inc(pid) do
        Agent.update(pid, &(&1 +1)) #Agent.update(pid, fn -> state +1 end)
    end
end