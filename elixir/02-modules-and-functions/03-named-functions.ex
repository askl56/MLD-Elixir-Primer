# Named Functions:

# Named functions, unlike anonymous functions, require a module for definition.
# That is, to define a named function we must define the function inside a module.

defmodule MyMath do
  def square(x) do
    x * x
  end
end

# When we import this module into iex

# iex(1)> import_file("mymath.exs")
# {:module, MyMath,
#  <<70, 79, 82, 49, 0, 0, 4, 160, 66, 69, 65, 77, 69, 120, 68, 99, 0, 0, 0, 113, 131, 104,
# 2, 100, 0, 14, 101, 108, 105, 120, 105, 114, 95, 100, 111, 99, 115, 95, 118, 49, 108, 0, 0, 0, 2, 104, 2, ...>>,
#  {:square, 1}}

# The last value is no longer nil, instead it is a tuple with square and 1, listing the public functions
# and their arity.

# We can then use our square function:

# iex(2)> MyMath.square(4)
# 16


# Private functions:

# Private functions are defined using defp, hence, a simplistic example:

defmodule MyMath do
  def square(x) do
    do_square(x)
  end

  defp do_square(x), do: x * x
end

