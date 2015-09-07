defmodule MyList do
  def reduce([], memo, _), do: memo
  def reduce([h | t], memo, func), do: reduce(t, func.(h, memo), func)
end
