defmodule MapSum do
  def of(list, func), do: _of(list, func, 0)

  defp _of([], _, total), do: total
  defp _of([h | t], func, total), do: _of(t, func, func.(h) + total)
end
