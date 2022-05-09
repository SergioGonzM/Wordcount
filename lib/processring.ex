defmodule ProcessRing do
  @moduledoc """
  Defines a ring using processes 
  """
  def init(n) do
    pids = Enum.map(1..n, fn _ -> spawn(&wait_for_config/0) end)
    next_pids = Enum.drop(pids, 1) ++ [hd(pids)]
    ring_config = Enum.zip(pids, next_pids)

    ring_config
    |> hd()
    |> then(fn {pid, next} -> send(pid, {:config, next, true}) end)

    ring_config
    |> Enum.drop(1)
    |> Enum.each(fn {pid, next_pid} ->
      send(pid, {:config, next_pid, false})
    end)

    hd(pids)
  end

  def rounds(pid, msg, n) do
    send(pid, {msg, n, n})
  end

  def wait_for_config() do
    receive do
      {:config, next_pid, main} ->
        IO.puts("pid: #{inspect(self())}, next: #{inspect(next_pid)} main: #{main}")
        process_msg(next_pid, main)

      _ ->
        :ok
    end
  end

  def process_msg(next, main) do
    receive do
      {msg, n, round_counter} ->
        prev_rounds =
          cond do
            main and n > 0 -> n - 1
            main -> :meta
            true -> n
          end

        case prev_rounds do
          :meta ->
            :ok

          _ ->
            IO.puts(
              "Process #{inspect(self())} received message \"#{msg}\", round #{round_counter - prev_rounds}"
            )

            send(next, {msg, prev_rounds, round_counter})
        end

      _ ->
        :ok
    end

    process_msg(next, main)
  end
end
