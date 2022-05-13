defmodule RabbitMQ.System do
  require Logger
  @doc """
  Creates the exchange, the queues and their bindings.
  If the exchange and queues already exist, does nothing.
  """
  def setup(exchange_name, queue_names) do
    {:ok, connection} = AMQP.Connection.open()
    {:ok, channel} = AMQP.Channel.open(connection)

    AMQP.Exchange.declare(channel, exchange_name, :direct)

    Enum.each(
      queue_names,
      fn queue_name ->
        AMQP.Queue.declare(channel, queue_name)
        AMQP.Queue.bind(channel, queue_name, exchange_name, routing_key: queue_name)
      end
    )
    Logger.info("[x] Exchange name: #{exchange_name} with queues: #{queue_names}")
    #IO.puts("[x] Exchange name: #{exchange_name} with queues: #{queue_names}")
    AMQP.Connection.close(connection)
  end
end

defmodule RabbitMQ.Producer do
  require Logger
  @doc """
  Sends n messages with payload 'msg' and the given routing key.
  """
  def send(exchange, routing_key, msg, n) do
    {:ok, connection} = AMQP.Connection.open()
    {:ok, channel} = AMQP.Channel.open(connection)

    Enum.each(1..n, fn _message ->
      AMQP.Basic.publish(channel, exchange, routing_key, msg)
    end)
    Logger.info("Sending #{n} messages to: #{routing_key}")
    #IO.puts("Sending #{n} messages to: #{routing_key}")
    AMQP.Connection.close(connection)
  end
end

defmodule RabbitMQ.Consumer do
  @doc """
  Creates a process that listens for messages on the given queue.
  When a message arrives, it writes to the log the pid, queue_name and msg.
  Example:
    iex> {:ok, pid} = Consumer.start("orders")
  """
  def start(queue_name) do
    spawn(fn -> wait_for_messages(queue_name) end)
  end

  def wait_for_messages(queue_name) do
    {:ok, connection} = AMQP.Connection.open()
    {:ok, channel} = AMQP.Channel.open(connection)
    # AMQP.Queue.declare(channel, queue_name)
    AMQP.Basic.consume(channel, queue_name, nil, no_ack: true)

    receive do
      {:basic_deliver, payload, _meta} ->
        IO.puts(" #{inspect(self())} received #{payload} from: #{queue_name}")
        AMQP.Connection.close(connection)
        wait_for_messages(queue_name)

      :stop ->
        AMQP.Connection.close(connection)
    end
  end

  @doc """
  Stops the given consumer.
  Example:
    iex> Consumer.stop("orders")
  """
  def stop(pid), do: send(pid, :stop)
end
