```elixir
list = [1, 2, 3, 4, 5]

for x <- list,
    x != 3,
    do: IO.puts(x)
```