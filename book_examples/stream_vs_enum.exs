IO.puts "Stream result:"
IO.inspect Stream.map(1..10_000_000, &(&1 + 1)) |> Enum.take(5)
IO.puts "Enum result:"
IO.inspect Enum.map(1..10_000_000, &(&1 + 1)) |> Enum.take(5)
