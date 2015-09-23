defmodule Counter do
  def start(initial_val \\ 0) do
    spawn fn -> listen(initial_val) end
  end

  defp listen(val) do
    receive do
      :inc -> listen(val + 1)
      :dec -> listen(val - 1)
      { sender, :val } ->
        send sender, val
        listen(val)
    end
  end
end
