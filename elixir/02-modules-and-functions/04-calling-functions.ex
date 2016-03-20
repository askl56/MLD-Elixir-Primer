# Calling functions

# Elixir draws from Ruby with this syntactically:

MyMath.square(4)
16
MyMath.square 4
16

# We use the . syntax for calling functions which are anonymous(homeless)

# iex(1)> f = fn x -> x * x end
# ...
# iex(2)> f.(2)
# 4

# However when the function is in a module:

defmodule Foo do
  def f(x), do: x * x
end
