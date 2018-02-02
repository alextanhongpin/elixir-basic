# all?

IO.inspect Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) === 3 end), label: "Check if all has length equals 3"
IO.inspect Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) > 1 end), label: "Check if all has length greater than 1"

# any?
IO.inspect Enum.any?(["foo", "bar", "hello"], fn(s) -> String.length(s) === 5 end), label: "Check if at least one has a length equals 5"

# chunk_every
IO.inspect Enum.chunk_every([1, 2, 3, 4, 5 , 6], 2), label: "Break into groups of two"

# chunk_by
IO.inspect Enum.chunk_by(["one", "two", "three", "four", "five"], fn(s) -> String.length(s) end), label: "Group items that has equal string length"

# map_every
IO.inspect Enum.map_every([1, 2, 3, 4, 5, 6, 7, 8], 3, fn(x) -> x + 1000 end), label: "Perform transformation on every nth item that is divisible by 3"

# each
Enum.each([1, 2, 3, 4], fn(s) -> IO.puts s end)

# map
IO.inspect Enum.map([1, 2, 3, 4], fn(x) -> x - 1 end), label: "Remove 1 from each item in the list"

# min
IO.inspect Enum.min([1, 2, 3, 4, -1]), label: "Find the min item"

# max
IO.inspect Enum.max([1, 2, 3, 4, -1]), label: "Find the max item"

# reduce
IO.inspect Enum.reduce([1, 2, 3], 10, fn(x, acc) -> x + acc end), label: "Sum all starting from 10"
IO.inspect Enum.reduce([1, 2, 3], fn(x, acc) -> x + acc end), label: "Sum all items"
IO.inspect Enum.reduce(["a", "b", "c"], "1", fn(x, acc) -> x <> acc end), label: "Concatenate all strings"

# sort
IO.inspect Enum.sort([4, 5, 1, 2, 3, 4]), label: "Sort integer in ascending order"
IO.inspect Enum.sort([4, 5, 1, 2, 3, 4], fn(x, y) -> x > y end), label: "Sort integer in descending order"
IO.inspect Enum.sort([:foo, "bar", Enum, -1, 4]), label: "Sort items"
IO.inspect Enum.sort([%{:val => 4}, %{:val => 3}], fn(x, y) -> x[:val] < y[:val] end), label: "Sorting by values"

# uniq_by
IO.inspect Enum.uniq_by([1, 2, 3, 4, 1, 2, 1, 2, 3, 4], fn x -> x end)