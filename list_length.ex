defmodule ListLength do
  def of([]), do: 0
  def of([h | t]), do: 1 + of(t)
end
