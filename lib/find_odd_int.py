# Given an array of integers, find the one that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.

# Examples
# [7] should return 7, because it occurs 1 time (which is odd).
# [0] should return 0, because it occurs 1 time (which is odd).
# [1,1,2] should return 2, because it occurs 1 time (which is odd).
# [0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
# [1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).

# PROBLEM
# ----------------
#
# INPUT: Array of integers
# OUTPUT: Integer appearing an odd number of times in the array
#
# RULES:
# - Always one integer appearing an odd number of times
#
# EXAMPLES
# ----------------
#
# INPUT: [0,1,0,1,0]
# =>
# =>
# OUTPUT: 0
#
# DATA STRUCTURES
# ----------------
#
# INPUT: Array
# => Dictionary
# OUTPUT: Integer
#
# ALGORITHM
# ----------------
#
#
# NOTES:
#
# WHAT:
# Create a uniq list
# For each integer in the array
#   If the count is odd return the integer
# HOW:
#
def find_it(seq):
  uniq_seq = {number for number in seq}
