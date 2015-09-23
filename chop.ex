defmodule Chop do
  def guess(n, range, suggestion \\ 0)

  def guess(n, range, suggestion) when suggestion == 0 do
    first..last = range
    IO.puts "is it #{div(first + last, 2)}?"
    guess(n, first..last, div(first + last, 2))
  end

  def guess(n, range, suggestion) when n > suggestion do
    _..last = range
    IO.puts "is it #{div(suggestion + last, 2)}?"
    guess(n, suggestion..last, div(suggestion + last, 2))
  end

  def guess(n, range, suggestion) when n < suggestion do
    first.._ = range
    IO.puts "is it #{div(first + suggestion, 2)}?"
    guess(n, first..suggestion, div(first + suggestion, 2))
  end

  def guess(n, _, suggestion) when n == suggestion do
    IO.puts "it's #{suggestion}!"
  end
end
