# List

IO.inspect [3.14, :pie, "Apple"], label: "The list is"

list = [3.14, :pie, "apple"]

# List concatenation

IO.inspect ["l"] ++ list
IO.inspect list
IO.inspect list ++ ["hello"]

# List subtraction

IO.inspect list -- [:pie, "bar", "apple"]
IO.inspect [1,1,1,2,3,3,3] -- [1, 3]

# Head/Tail

IO.inspect hd list
IO.inspect tl list

[head | tail] = list
IO.inspect head
IO.inspect tail

# Tuples

IO.inspect {3.14, :pie, "apple"}

# Keyword lists

k1 = [foo: "bar", hello: "world"]
k2 = [{:foo, "bar"}, {:hello, "world"}]

IO.inspect k1
IO.inspect k2

# Maps

map = %{:foo => "bar", "hello" => "world"}
IO.inspect map
IO.inspect map[:foo]
IO.inspect map["hello"]

IO.inspect %{:foo => "bar", :foo => "crazy"}

newMap = %{foo: "bar", hello: "world"}
IO.inspect newMap.foo
IO.inspect %{newMap | hello: "this"}