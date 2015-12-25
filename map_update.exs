m = %{ a: 1, b: 2, c: 3 }
m1 = %{ m | b: "two", c: "three" }
IO.inspect m1
m2 = %{ m1 | a: "one" }
IO.inspect m2
