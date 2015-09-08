defmodule Caesar do
  def of([], _n), do: []
  def of([h | t], n) when h + n <= ?z, do: [h + n | of(t, n)]
  def of([h | t], n), do: [h + n - 26 | of(t, n)]
end
