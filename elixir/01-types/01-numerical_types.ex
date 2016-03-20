# iex(1)> 42
# 42

# iex(2)> 42 + 5
# 47
# iex(3)> 6 * 7
# 42
# iex(4)> 42 - 10
# 32
# iex(5) 42 / 6
# 7.0


# / will always return a FP number due to implicit type conversion


# iex(6) div(10, 3)
# 3
# iex(7) rem(10, 3)
# 1


# Elixir also has some neat shortcuts to represent numbers in different basis. That is, we can represent and convert between different numerical basis nearly trivially. To print a binary number in decimal, we can use the 0b prefix:

# iex(1)> 0b1010
# 10

# Furthermore, to print an octal number as a decimal, we can use the 0o prefix:

# iex(2)> 0o755
# 493

# Finally, as the pattern continues, to print hexadecimal numbers as decimals, use the 0x prefix:

# iex(3)> 0xFF
# 255
