defmodule ListLength do
  def of([]), do: 0
  def of([_h | t]), do: 1 + of(t)
end
