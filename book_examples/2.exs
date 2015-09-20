fizzbuzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, a) -> a
end

myfunc = fn(n) -> fizzbuzz.(rem(n,3), rem(n,5), n) end

# IO.puts fizzbuzz.(0,0,1)
# IO.puts fizzbuzz.(0,1,1)
# IO.puts fizzbuzz.(1,0,1)
# IO.puts fizzbuzz.(1,1,2)

IO.puts myfunc.(10)
IO.puts myfunc.(11)
IO.puts myfunc.(12)
IO.puts myfunc.(13)
IO.puts myfunc.(14)
IO.puts myfunc.(15)
IO.puts myfunc.(16)
IO.puts myfunc.(17)
