# Pattern matching

# One of the most misunderstood concepts in functional programming is that of assignment.
# Or, said another way, assignment doesn't exist.

# Let's try to dispel this misconceived idea. In iex, we might see some code like this:


# iex(1)> a = 2
# 2
# iex(2)> a + 4
# 6

# We may be tempted to explain the preceding code snippet with something like,
# "So we assign 2 to a and then add 4 to a giving us 6."

# However, in Elixir, this is incorrect.

# Elixir does not define = as an assignment operator, but rather a match operator.
# That is, Elixir attempts to match the left side of the = operator to that of the right.

# In step 1, for Elixir to make the match succeed, we bind the value of 2 to the variable, a.
# Then later, when we perform the addition, we are substituting 2 for a,
# yielding an expression that looks like 2 + 4, which obviously equals 6.

# If all we are doing is binding, why can we do something like this:

# iex(1)> a = 2
# 2
# iex(2)> a = 3
# 3

# This is because Elixir will rebind values to make the match succeed.
# Notice, however, you are not able to do this:

# iex(1)> a = 2
# 2
# iex(2)> 3 = a
# ** (MatchError) no match of right hand side value: 2

# But we can do something like this:

# iex(1)> a = 2
# 2
# iex(2)> 2 = a
# 2

# Since Elixir will always try to make the left-hand side match the right, we can use this to
# our advantage to decompose lists, extract elements,
# or decompose complex structures into simpler variables.

# Let's take a look at decomposing lists.

# We may define a list as:


# iex(1)> list = [1, 2, 3]
# [1, 2, 3]
# Then, we may attempt to match it against a, b, c:


# iex(2)> [a, b, c] = list
# [1, 2, 3]
# iex(3)> a
# 1
# iex(4)> b
# 2
# iex(5)> c
# 3

# So Elixir attempts to create a match between the left side: [a, b, c] and list
# (which evaluates to [1, 2, 3]). For Elixir to successfully match these two sides, a, b, and c
# must be bound to the values 1, 2, and 3, respectively. As we see in commands 3-5,
# this is indeed the case.

# Similarly, literal values can be used in the match expressions, using the same list:


# iex(2)> [a, 2, c] = list
# [1, 2, 3]
# iex(3)> a
# 1
# iex(4)> c
# 3

# Using the underscore

# In many functional languages, the underscore (_) is used to denote values we don't wish to bind to any value, or we don't care to use. Using the previous example, perhaps we don't care about the middle value of the list, but we can use the underscore to match against the 2, or whatever it actually is:

# iex(2)> [a, _, c] = list
# [1, 2, 3]
# iex(3)> a
# 1
# iex(4)> c
# 3
# iex(5)> _
# ** (CompileError) iex:5: unbound variable _


# It turns out that the underscore is a bit of a special variable. It allows us to match any expression,
# for example,
#  _ = list

# would match successfully, but Elixir never keeps the bound value. This is good for two reasons.
# Firstly, semantically speaking, when reading any Elixir code, if we see the underscore,
# we know we can ignore it, and, secondly, the fact that Elixir
# will not allow us to use it will certainly help ensure that we don't
# make any mistakes with its actual value.
