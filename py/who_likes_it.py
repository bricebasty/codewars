# You probably know the "like" system from Facebook and other pages.
# People can "like" blog posts, pictures or other items.
# We want to create the text that should be displayed next to such an item.

# Implement the function which takes an array containing the names of people
# that like an item. It must return the display text as shown in the examples:

# PROBLEM
# ----------------
#
# INPUT: Array
# OUTPUT:
#
# RULES:
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
#
# HOW:
#

def likes(names):
    match len(names):
        case 0:
            return []
        case 1:
            return f'{names[0]} likes this'
        case 2:
            return f'{names[0]} and {names[1]} like this'
        case 3:
            return f'{names[0]}, {names[1]} and {names[2]} like this'
    return f'{names[0]}, {names[1]} and {len(names) - 2} others like this'


print('Test result is ' + str(likes([]) == 'no one likes this'))
print(likes([])) # 'no one likes this'

print('Test result is ' + str(likes(['Peter']) == 'Peter likes this'))
print(likes(['Peter'])) # 'Peter likes this'

print('Test result is ' + str(likes(['Jacob', 'Alex']) == 'Jacob and Alex like this'))
print(likes(['Jacob', 'Alex'])) # 'Jacob and Alex like this'

print('Test result is ' + str(likes(['Max', 'John', 'Mark']) == 'Max, John and Mark like this'))
print(likes(['Max', 'John', 'Mark'])) # 'Max, John and Mark like this'

print('Test result is ' + str(likes(['Alex', 'Jacob', 'Mark', 'Max']) == 'Alex, Jacob and 2 others like this'))
print(likes(['Alex', 'Jacob', 'Mark', 'Max'])) # 'Alex, Jacob and 2 others like this'