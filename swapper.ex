defmodule Swapper do
  def of([]), do: []
  def of([ a, b | t ]), do: [ b, a | of(t) ]
  def of(_), do: raise "Can't swap a list with an odd number of elements"
end
