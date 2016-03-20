# Functions

# Functions are first class citizens and can be used like any other type.

# iex(1)> double = fn x -> x * 2 end
#Function<6.90072148/1 in :erl_eval.expr/5>

# iex(2)> double.(2)
# 4

# iex(3)> Enum.map(1..10, double)
# [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

# More on functions later.
