# Write an algorithm that will identify valid IPv4 addresses in dot-decimal format.
# IPs should be considered valid if they consist of four octets, with values between
# 0 and 255, inclusive.

# Valid inputs examples:
# Examples of valid inputs:
# 1.2.3.4
# 123.45.67.89
# Invalid input examples:
# 1.2.3
# 1.2.3.4.5
# 123.456.78.90
# 123.045.067.089
# Notes:
# Leading zeros (e.g. 01.02.03.04) are considered invalid
# Inputs are guaranteed to be a single string

# PROBLEM
# ----------------
#
# INPUT: String
# OUTPUT: Boolean (format of IP adresss is valid?)
#
# RULES:
# - Leading zeros are considered invalid
# - Inputs will be only single string
# - 4 numbers from 1 to 255 separated by 3 dots
#
# EXAMPLES
# ----------------
#
# INPUT: 1.2.3.4
# => 1
# =>
# OUTPUT: True

# INPUT: 123.045.107.089
# => 123 -> 1 -> ok
# => 045 -> 0 -> false
# OUTPUT: false
#
# DATA STRUCTURES
# ----------------
#
# INPUT:
# =>
# OUTPUT:
#
# ALGORITHM
# ----------------
#
#
# NOTES:
#
# WHAT:
# Split the string by dots
# Check for each element in the array
#   If (it's first character is a 0 and the element length is 1) or (element contains letters) or (element to integer is not in between 0 and 255 inclusive)
#     Return false
# return true
# HOW:
#

import re

def is_valid_IP(strng):
    if strng == "":
      return False
    numbers = strng.split(".")
    for number in numbers:
        if (number[0] == "0" and len(number) > 1) or (re.search("[A-Za-z]", number) != None) or (0 < int(number) > 255):
          return False
    return True

# print('Test result is ' + str(is_valid_IP('12.255.56.1') ==     True))
# print(is_valid_IP('12.255.56.1')) #     True

# print('Test result is ' + str(is_valid_IP('') ==                False))
# print(is_valid_IP('')) #                False

# print('Test result is ' + str(is_valid_IP('abc.def.ghi.jkl') == False))
# print(is_valid_IP('abc.def.ghi.jkl')) # False

print('Test result is ' + str(is_valid_IP('123.456.789.0') ==   False))
print(is_valid_IP('123.456.789.0')) #   False

print('Test result is ' + str(is_valid_IP('12.34.56') ==        False))
print(is_valid_IP('12.34.56')) #        False

print('Test result is ' + str(is_valid_IP('12.34.56 .1') ==     False))
print(is_valid_IP('12.34.56 .1')) #     False

print('Test result is ' + str(is_valid_IP('12.34.56.-1') ==     False))
print(is_valid_IP('12.34.56.-1')) #     False

# print('Test result is ' + str(is_valid_IP('123.045.067.089') == False))
# print(is_valid_IP('123.045.067.089')) # False

# print('Test result is ' + str(is_valid_IP('127.1.1.0') ==        True))
# print(is_valid_IP('127.1.1.0')) #        True

# print('Test result is ' + str(is_valid_IP('0.0.0.0') ==          True))
# print(is_valid_IP('0.0.0.0')) #          True

# print('Test result is ' + str(is_valid_IP('0.34.82.53') ==       True))
print(is_valid_IP('0.34.82.53')) #       True

print('Test result is ' + str(is_valid_IP('192.168.1.300') ==   False))
print(is_valid_IP('192.168.1.300')) #   False