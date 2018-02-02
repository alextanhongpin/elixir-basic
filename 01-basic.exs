# Integers
IO.puts 21

# Floats
IO.puts 3.14

# Booleans
IO.puts true
IO.puts false

# Atoms
IO.puts :foo
IO.puts :bar

IO.puts true |> is_atom
IO.puts :true |> is_atom
IO.puts :true === true
IO.puts is_atom(true)
IO.puts is_atom(MyApp.MyModule)

# Strings
IO.puts "hello world"

# Operations

# Integer/remainder divison
IO.puts div(10, 4)
IO.puts rem(10, 4)

# Boolean Operations
IO.puts false || 10
IO.puts 10 && 10

IO.puts not true
IO.puts true and 55
IO.puts true or false

# Strict comparison
IO.puts 2 == 2.0
IO.puts 2 === 2.0

# String interpolation
name = "Sean"
IO.puts "Hello, #{name}"

# String concatenation
IO.puts "Hello, " <> name