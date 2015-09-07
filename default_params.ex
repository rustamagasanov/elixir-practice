defmodule DefaultParams do
  def try(a, b \\ 2, c \\ 3, d), do: IO.puts "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end
