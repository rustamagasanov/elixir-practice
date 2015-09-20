defmodule ListPrimes do
  def of(till), do: _of(2, till, [])

  # defp _of(2, till, _primes) when till < 2, do: []
  # defp _of(2, till, _primes) when till == 2, do: [2]
  # defp _of(from, to, primes) do
  #   for x <- from..to do
  #     for y <- 2..round(:math.sqrt(x)) do
  #     end
  #   end
  # end
end
