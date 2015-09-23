defmodule ListPrimes do
  def till(n) when n < 2, do: []
  def till(n) do
    sieve = Enum.to_list(2..n)
    products = for x <- sieve, y <- sieve, x >= y, x * y <= n, do: x * y
    sieve -- products
  end
end
