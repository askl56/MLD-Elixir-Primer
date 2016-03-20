# Modules

# Modules are named like so:

defmodule Foobar do end

# iex>(1) defmodule Foo do end
# {:module, Foo,
#  <<70, 79, 82, 49, 0, 0, 3, 136, 66, 69, 65, 77, 69, 120, 68, 99, 0, 0, 0, 60, 131, 104, 2, 100, 0, 14, 101, 108, 105, 120, 105, 114, 95,
# 100, 111, 99, 115, 95, 118, 49, 108, 0, 0, 0, 2, 104, 2, ...>>,
#  nil}


# We have a tuple whose first element is an atom, :module;
# second, the name of the module;
# third, a binary that defines the module;
# fourth is nil since the module does not export any public functions.

