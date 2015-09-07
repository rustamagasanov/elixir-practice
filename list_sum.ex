defmodule ListSum do
  def of([]), do: 0
  def of([h | t]), do: h + of(t)
end
