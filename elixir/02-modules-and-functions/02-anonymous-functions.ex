# Anonymous functions

# Anonymous functions are similar to regular functions except that they are not bound to an identifier.

# Furthermore, there are actually two different syntaxes to define anonymous functions.
# This includes the syntax we saw earlier—

fn (x) -> x end

# But there is also a shorter syntax variant—&(block).

# iex(1)> square = fn x -> x * x end
#Function<6.90072148/1 in :erl_eval.expr/5>

# Then we could use it with the following:

# iex(2) square.(2)
# 4

# The #Function<6.90072148/1 in :erl_eval.expr/5>, after we define the function,
# is the result of our expression evaluated by the Elixir compiler (where does the number come from?).
# This return value also tells us something about the function we have defined—it was in-lined by the compiler.
# Our function is actually translated to Erlang and then compiled by Erlang's compiler,
# erlc, to generate the currently loaded bytecode for our simple square function.

# Furthermore, we can have, arbitrarily, many arguments, or none at all, if we want:

# iex(1)> (fn x, y, z -> x + y * z end).(2, 6, 8)
# 50

# Here we call the function immediately after defining it.

# We can do the same thing too with the shorter syntax:

# iex(2)> (&(&1 + &2 * &3)).(2, 6, 8)
# 50
# And just to prove that the two syntaxes are the same, we can do the following:


# iex(3)> square1 = fn x -> x * x end
#Function<6.90072148/1 in :erl_eval.expr/5>

# iex(4)> square2 = &(&1 * &1)
#Function<6.90072148/1 in :erl_eval.expr/5>

# Pattern matching

area = fn {:circle, r} ->
  3.14159 * r * r
  {:rect, w, h} ->
  w * h
end

area.({:circle, 5})
78.53975

area.({:rect, 5, 5})
25

area.({:triangle, 5, 5})
# (FunctionClauseError) no function clause matching in :erl_eval."-inside-an-interpreted-fun-"/1

# If we only passed in the width we would get the same problem:

area.({:rect, 5})
# (FunctionClauseError) no function clause matching in :erl_eval."-inside-an-interpreted-fun-
