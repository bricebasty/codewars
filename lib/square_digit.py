# Welcome. In this kata, you are asked to square every digit of a number and concatenate them.

# For example, if we run 9119 through the function, 811181 will come out,
# because 9² is 81 and 1² is 1. (81-1-1-81)

# Example #2: An input of 765 will/should return 493625 because
# 7² is 49, 6² is 36, and 5² is 25. (49-36-25)

# Note: The function accepts an integer and returns an integer.

# Happy Coding!

# PROBLEM
# ----------------
#
# INPUT: integer
# OUTPUT: concatenated integer of every square of every digit in input
#
# RULES:
# - Has to be an integer at the end
# -
#
# EXAMPLES
# ----------------
#
# INPUT:
# =>
# =>
# OUTPUT:
#
# DATA STRUCTURES
# ----------------
#
# INPUT: Integer
# => String
# OUTPUT: Integer
#
# ALGORITHM
# ----------------
#
#
# NOTES:
#
# WHAT:
# Create an empty string
# For each number in the integer:
#   Square it
#   Add it at the end of a string
# Convert the string to an integer
# HOW:
#
def square_digits(num):
  empty_string = ""
  

print(square_digits(9119)) # 811181

print(square_digits(0)) # 0
