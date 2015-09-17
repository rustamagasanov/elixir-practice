defmodule DefaultParams2 do
  def try(p1, p2 \\ 123)

  def try(p1, p2) when is_list(p1) do
    IO.puts "you said list and #{p2}"
  end

  def try(p1, p2) do
    IO.puts "you said #{p1} and #{p2}"
  end
end
