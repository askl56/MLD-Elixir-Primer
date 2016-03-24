# Tuples
# Tuples, similar to lists, allow us to collect the elements together into a single structure.
# Tuples differ from lists in denotion in that they are surrounded by curly brackets—{ and }.


# Furthermore, tuples can hold any value:
# iex(1)> tuple = {1, 2, :ok, "hello"}
# {1, 2, :ok, "hello"}

# However, the difference between tuples and lists is that tuples store elements contiguously in memory.
# Lists are inherently linked, and thus, accessing an element of a list by index is a slow, order n time, operation.
# Tuples, on the other hand, enable fast, constant-time element access.

# Using the tuple_size/1 function, we can get the length or size of any given tuple:

# iex(2)> tuple_size(tuple)
# 4

# Using the elem/2 function, we can access any element of a tuple with an index (indexes start at 0):

# iex(3)> elem(tuple, 1)
# 2

# We can also use the put_elem/3 function to insert (read replace) elements in a tuple at the provided index:

# iex(4)> put_elem(tuple, 3, "world")
# {1, 2, :ok, "world"}
# iex(5)> tuple
# {1, 2, :ok, "hello"}
