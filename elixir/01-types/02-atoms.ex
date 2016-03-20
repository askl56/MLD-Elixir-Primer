# Atoms, sometimes referred to as symbols in other languages, are literal,
# constant terms where the name is the value itself.
# In Elixir, they are always prefixed with a leading colon, :.

# iex(1)> :ok
# :ok
# iex(2)> :error
# :error

# iex(3)> Atom.to_string(:ok)
# "ok"

# iex(4)> String.to_atom("ok")
# :ok

# Atom memory usage

# Atoms use 1 word or 8 bytes of memory and are unique.
# That is, once you define (read use) an atom, it will point to the same memory as all
# the other occurrences of that atom. Furthermore, they are not garbage-collected, nor are they mutable.
# The memory used by atoms will never be freed up until the termination of the program.

# From the Erlang Efficiency Guide:

# 1 word. Note: an atom refers into an atom table which also consumes memory. The atom text is stored once
# for each unique atom in this table. The atom table is not garbage-collected.
