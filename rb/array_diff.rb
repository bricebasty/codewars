# Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.
# Input: [1, 2], [1]
# Output: [2]

# It should remove all values from list a, which are present in list b keeping their order.

# array_diff([1,2],[1]) == [2]
# If a value is present in b, all of its occurrences must be removed from the other:

# array_diff([1,2],[1]) == [2]
def array_diff(a, b)
  b.each { |e| a.delete_if { |n| n == e } }
  a
end

p array_diff([1, 2], [1]) # 'a was [1,2], b was [1], expected [2]'
p array_diff([1, 2, 2], [1]) # 'a was [1,2,2], b was [1], expected [2,2]'
p array_diff([1, 2, 2], [2]) # 'a was [1,2,2], b was [2], expected [1]'
p array_diff([1, 2, 2], []) # 'a was [1,2,2], b was [], expected [1,2,2]'
p array_diff([], [1, 2]) # 'a was [], b was [1,2], expected []'
p array_diff([1, 2, 3], [1, 2]) # 'a was [1,2,3], b was [1, 2], expected [3]'
