defmodule Stack do
  use GenServer

  # Callbacks

  def handle_call(:pop, _from, [h|t]) do
    {:reply, h, t}
  end

  def handle_cast({:push, item}, state) do
    {:noreply, [item|state]}
  end
end

# Start the server
{:ok, pid} = GenServer.start_link(Stack, [:hello])

# This is the client
IO.inspect GenServer.call(pid, :pop)
#=> :hello

IO.inspect GenServer.cast(pid, {:push, :world})
#=> :ok

IO.inspect GenServer.call(pid, :pop)
#=> :world
