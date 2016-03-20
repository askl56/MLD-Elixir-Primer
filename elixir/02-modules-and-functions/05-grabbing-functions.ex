# Grabbing functions

# We use the & operator or function capture operator

# import_file("mymath.exs")
Enum.map([1, 2, 3], &MyMath.square/1)
[1, 4, 9]

# Here, we load the module again, for completeness, and then we invoke Enum.map/2 with the list [1, 2, 3]
# and pass our square/1 function from MyMath. You may wonder why we need to grab the function with the arity.
# This, if you recall, is because Elixir functions are defined by their name and arity or number of parameters.
# For example, say we define our square/1 function as pow/1 instead where, if pow is given one function,
# it assumes we want to raise the argument to the second power, otherwise, there is a pow/2 that takes
# the base and the power. It would look something like this:


defmodule MyMath do
  def pow(x), do: pow(x, 2)

  def pow(x, p) do
    Enum.reduce(Enum.take(Stream.repeatedly(fn -> x end), p), &*/2)
  end
end

# The pow/2 function takes the base, x, and the power, p, and we pass it to a particularly dense function chain.
# Reading inside out, we are using another internal Elixir module, Stream. Specifically, we call
# Stream.repeatedly/1 with the argument, fn -> x end.
# This is, of course, an anonymous function that simply returns x, our base. Stream.repeatedly/1
# will call this anonymous function as many times as it's required, possibly infinitely!

