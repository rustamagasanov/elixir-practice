defmodule ListMax do
  def of([h | t]), do: _of(t, h)

  defp _of([], max), do: max
  defp _of([h | t], max) when h > max, do: _of(t, h)
  defp _of([_h | t], max), do: _of(t, max)
end
