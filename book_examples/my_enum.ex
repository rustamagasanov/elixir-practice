defmodule MyEnum do
  def all?(list, func), do: _all?(list, func, true)
  defp _all?([ h | t ], func, true) do
    if func.(h) == true do
      _all?(t, func, true)
    else
      false
    end
  end
  defp _all?([], _func, true), do: true

  def each([h | t], func) do
    func.(h)
    each(t, func)
  end
  def each([], _func), do: :ok


  def filter([], _func), do: []
  def filter([h | t], func) do
    if func.(h) == true do
      [ h | filter(t, func) ]
    else
      filter(t, func)
    end
  end

  def split([], _by), do: {[], []}
  def split(list, by), do: _split(list, by, {[], []})
  defp _split([], _by, res), do: res
  defp _split([h | t], by, res) when by == 0, do: _split(t, by, { elem(res, 0), elem(res, 1) ++ [h] })
  defp _split([h | t], by, res) when by > 0, do: _split(t, by - 1, { elem(res, 0) ++ [h], elem(res, 1) })
  defp _split([h | t], by, res) when by < 0, do: _split(t, by + 1, { elem(res, 0), elem(res, 1) ++ [h] })

  def flatten([]), do: []
  def flatten(list), do: _flatten(list, [])
  defp _flatten([], memo), do: memo
  defp _flatten([h | t], memo) when is_list(h), do: _flatten(t, _flatten(h, memo))
  defp _flatten([h | t], memo), do: _flatten(t, memo ++ [h])
end
