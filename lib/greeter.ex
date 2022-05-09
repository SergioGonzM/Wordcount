defmodule Greeter do
  @moduledoc """
  Defines a greeter to watch how processes works
  """

    def greet() do
      receive do
        {who, pid} -> send(pid, "Hello #{who} from #{inspect(self())}")
        _ -> IO.puts("uh??")
      end
      greet()
    end
end


