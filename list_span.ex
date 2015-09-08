defmodule ListSpan do
  def of(from, to), do: _of(from, to, [])

  defp _of(from, from, list), do: [from | list]
  defp _of(from, to, list), do: _of(from, to - 1, [to | list])
end
