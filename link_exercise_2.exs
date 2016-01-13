defmodule LinkExercise2 do
  import :timer, only: [ sleep: 1 ]

  def sad_function(pid) do
    send pid, { :ok, "message 1" }
    send pid, { :ok, "message 2" }
    send pid, { :ok, "message 3" }
    raise "error raised"
  end

  def run do
    Process.flag(:trap_exit, true)
    spawn_link(LinkExercise2, :sad_function, [self])
    sleep 500
    receive_messages
  end

  def receive_messages do
    receive do
      msg ->
        IO.puts "MESSAGE RECEIVED: #{inspect msg}"
    after 1000 ->
        IO.puts "Nothing happened as far as I am concerned"
        exit(:ok)
    end
    receive_messages
  end
end

LinkExercise2.run
