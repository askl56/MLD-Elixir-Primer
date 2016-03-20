# Booleans

# iex(1)> true
# true
# iex(2)> true == false
# false
# iex(3)> 2 < 42
# true
# iex(4)> 5 > 10
# false

# And as with most languages, we have our typical negation, the AND and OR operators:


# iex(5)> not false
# true
# iex(6)> true and false
# false
# iex(7)> 1 and true
# ** (ArgumentError) argument error: 1
# iex(8)> false or true
# true


# The not, and, and or operators are type strict with their first argument.
# The second argument can be anything. This explains what happened at prompt 7 here.
# However, or and and are short-circuit operators, so we can do the following as well:


# iex(9)> true or error("I will not raise")
# true
# iex(10)> false and error("I will not raise either")
# false
# Although Elixir provides not, and, and or operators, it also provides non-type strict operators, !, &&, and ||, respectively:


# iex(11)> !42
# false
# iex(12)> 1 || false
# 1
# iex(13)> true && 42
# 42


# There are also some built in equality functions

# is_boolean/1
# is_atom/1
# is_integer/1
# is_float/1
# is_number/1


# iex(14)> is_boolean(true)
# true
# iex(15)> is_boolean(1)
# false
# iex(16)> is_atom(false)
# true

# The overall ordering of types is number < atom < reference < function < port < pid
# < tuple < maps < list < bitstring.

