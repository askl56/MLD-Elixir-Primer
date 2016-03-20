# Linked Lists

# iex(1)> [1, 2, 4, :ok, 6, true]
# [1, 2, 4, :ok, 6, true]

# We can concatenate two lists together using the ++/2 operator:

# iex(2)> [1, 2, 3] ++ [4, 5, 6]
# [1, 2, 3, 4, 5, 6]

# Similarly, we can subtract two lists using the --/2 operator:

# iex(3) [1, 2, true, false, true] -- [true, false]
# [1, 2, true]


# Many functional algorithms that process lists will do so in a process head, recursively, process tail.
# So, it would be nonsense for our functional language to not provide us functions for doing just this.
# To grab the head of the list, we use hd/1:


# iex(4)> hd([1, 2, 3, 4, 5])
# 1
# And to grab the tail of the list, we use tl/1:


# iex(5)> tl([1, 2, 3, 4, 5])
# [2, 3, 4, 5]

# Strings are arrays too!

# iex(8)> 'hełło'
# [104, 101, 322, 322, 111]
# iex(9)> is_list('hello')
# true
# iex(10)> [104, 101, 108, 108, 111]
# 'hello'


# Ranges


# Similar to lists, we can create number ranges simply with ../2.
# For example, to generate a list of numbers from 1 to 100, we would simply use 1..100.
# However, typing this into iex is less than interesting:

# iex(1)> 1..100
# 1..100

# Actually, this is interesting. Why didn't Elixir expand the range? This is because ranges are considered lazy.
# The result is not actually enumerated until it absolutely has to be. Lazy evaluation enables us to
# solve problems that are potentially infinite; however, we don't have to worry about that since it turns
# out that we will only need a tiny subset of the dataset. It turns out, though, that most things in Erlang,
#  and thus, Elixir, are considered eager.


