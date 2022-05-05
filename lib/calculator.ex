defmodule Calculator do
    def init(n) do
        calc(n)
    end

    def calc(x) do
        value = receive do
            {:sum, num, pid} -> send(pid, {:state, x + num}); x + num
            {:mult, num, pid} -> send(pid, {:state, x * num}); x * num
            {:sub, num, pid} -> send(pid, {:state, x - num}); x - num
            {:div, num, pid} -> send(pid, {:state, x / num}); x / num

            _ -> {:error, "Incorrect entry"}
        end
        calc(value)
    end
end