defmodule MyMap do
  def of([], _func), do: []
  def of([h | t], func), do: [ func.(h) | of(t, func) ]
end
