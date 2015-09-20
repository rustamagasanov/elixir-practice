defmodule ListSquare do
  def of([]), do: []
  def of([h | t]), do: [h*h | of(t)]
end
