person = %{ name: "Dave", height: 1.88 }
%{ name: a_name } = person
IO.inspect a_name # => "Dave"
%{ name: _, height: _ } = person # => %{ name: "Dave", height: 1.88 }
%{ name: "Dave" } = person # => %{ name: "Dave", height: 1.88 }

