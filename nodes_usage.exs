# iex --sname node_one                     - runs new named node(Erlang VM)
# Node.self                                - outputs current node_name
# Node.connect :"other_node@host"          - connects to other node

# func = fn -> IO.inspect Node.self end
# spawn(func)                              - spawns func on current node
# Node.spawn(Node.self, func)              - same call run explicitly
# Node.spawn(:"other_node@host", func)     - spawns func on other node, outputs result on cur node
