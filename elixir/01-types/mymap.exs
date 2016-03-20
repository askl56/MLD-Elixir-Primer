defmodule MyMap do
  def map([], _) do
    []
  end

  def map([head|tail], function) do
    [function.(head) | map(tail, function)]
  end
end

square = fn x -> x * x end
MyMap.map([1, 2, 3, 4, 5], square)

#=> [1, 4, 9, 16, 25]

# Once in iex, we will use import_file/1 to import and launch our script.

# Loading our code, we should see something similar to the following:

# iex(1)> import_file("mymap.exs")
# [1, 4, 9, 16, 25]

# Furthermore, we have access to the MyMap.map/2 and square/1 functions we defined in the script.
# We can now use these in the interactive session to debug or explore the given code:

# iex(2)> double = fn x -> x * 2 end
# #Function<6.90072148/1 in :erl_eval.expr/5>
# iex(3)> MyMap.map([1, 2, 3, 4, 5], double)
# [2, 4, 6, 8, 10]

# Here, instead of squaring the number, we double it,
# and we operate over the same list, [1, 2, 3, 4, 5].
