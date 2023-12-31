# Consider a "word" as any sequence of capital letters A-Z.
# For any word with at least two different letters,
# there are other words composed of the same letters
# but in a different order (for instance, STATIONARILY/ANTIROYALIST, which happen
#   to both be dictionary words; for our purposes "AAIILNORSTTY" is also a "word"
#   composed of the same letters as these two).
# end

# We can then assign a number to every word, based on where it falls in an
# alphabetically sorted list of all words made up of the same group of letters.
# One way to do this would be to generate the entire list of words and find the
#   desired one, but this would be slow if the word is long.
# end

# Given a word, return its number. Your function should be able to accept any
# word 25 letters or less in length (possibly with some letters repeated),
# and take no more than 500 milliseconds to run. To compare, when the solution
# code runs the 27 test cases in JS, it takes 101ms.

# For very large words, you'll run into number precision issues in JS
# (if the word's position is greater than 2^53). For the JS tests with large
# positions, there's some leeway (.000000001%). If you feel like you're getting
# it right for the smaller ranks, and only failing by rounding on the larger,
# submit a couple more times and see if it takes.
# end

# Python, Java and Haskell have arbitrary integer precision, so you must be
# precise in those languages (unless someone corrects me).

# Sample words, with their rank:

# PROBLEM
# ----------------
# INPUT:
# OUTPUT:
#
# RULES:
# -
#
# EXAMPLES
# ----------------
# ABAB = 2
# AAAB = 1
# BAAA = 4
#  =
#
# INPUT:
# =>
# =>
# OUTPUT:
#
# INPUT: QUESTION
# =>
# =>
# OUTPUT: 24572
#
# INPUT:BOOKKEEPER
# =>
# =>
# OUTPUT: 10743
#
# DATA STRUCTURES
# ----------------
# INPUT:
# =>
# OUTPUT:
#
# ALGORITHM
# ----------------
#
# NOTES:
#
# WHAT:
# Sort the letters
# Divide the factorial of the number of characters in the input
# By
# The factorials of the frequencies of each character all multiplied
#
# HOW:
# Create asorted string
#
# Take all characters in the string and map them to the factorial of their count
#
def factorial(n)
  (1..n).inject(&:*)
end

def listPosition(word)
  factorial(word.size) / word.chars.map { |char| factorial(word.count(char)) }.inject(&:*)
end



p listPosition("ABAB")
