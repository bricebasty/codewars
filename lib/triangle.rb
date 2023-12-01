# Given the triangle of consecutive odd numbers:

#              1
#           3     5
#        7     9    11
#    13    15    17    19
# 21    23    25    27    29
# ...
# Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.: (Input --> Output)

# 1 -->  1
# 2 --> 3 + 5 = 8

# 1 = 1 1*1
# 2 = 8  2*4
# 3 = 27 3*9
# 4 = 64 4*16

def row_sum_odd_numbers(n)
  n * n**2
end

p row_sum_odd_numbers(1) # 1
p row_sum_odd_numbers(2) # 8
p row_sum_odd_numbers(13) # 2197
p row_sum_odd_numbers(19) # 6859
p row_sum_odd_numbers(41) # 68921
