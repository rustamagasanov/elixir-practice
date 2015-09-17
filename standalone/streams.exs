list = [1, 2, 3, 4]
squares   = Stream.map list, &(&1 * &1)
plus_ones = Stream.map squares, &(&1 + 1)
odds      = Stream.filter plus_ones, &(rem(&1, 2) == 1)

IO.inspect Enum.to_list odds
