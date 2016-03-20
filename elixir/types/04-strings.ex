# # Strings

# Strings in Elixir, as you would expect, are just UTF-8 characters surrounded by double quotes.
# But they have a few extra qualities that most other languages either don't
# have or treat differently. For example, strings may contain line breaks, by either including
# them using escape sequences or by actually writing the new line into the string.

# We've seen this earlier:


# iex(1)> "Hello, World!"
# "Hello, World!"
# iex(2)> "Hello,\nWorld!"
# "Hello,\nWorld"
# But we can also do this:


# iex(3)> "Hello,
# ...(3)> World!"
# "Hello,\nWorld!"

# We can also use the IO.puts/1 function again to print the newline character:


# iex(4)> IO.puts("Hello,\nWorld!")
# Hello,
# World!
# :ok

# iex(5)> IO.puts("Hello,
# ...(5)> World!")
# Hello,
# World!
# :ok


# Interpolation:

# iex(7)> "Hello, #{:world}!"
# "Hello, world!"

# Built in functions:

# iex(8)> String.reverse("Hello, World!")
# "!dlroW ,olleH"
# iex(9)> String.length("Hello, World!")
# 13
# iex(10)> String.at("Hello, World!", 6)
# " "

