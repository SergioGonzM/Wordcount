{:ok, connection} = AMQP.Connection.open
{:ok, channel} = AMQP.Channel.open(connection)
AMQP.Queue.declare(channel, "hello")
AMQP.Basic.publish(channel, "", "hello", "Hello World!2")
IO.puts " [x] Sent 'Hello World!1'"
AMQP.Connection.close(connection)