# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

# Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:

# []                                -->  "no one likes this"
# ["Peter"]                         -->  "Peter likes this"
# ["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
# ["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
# ["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"
# Note: For 4 or more names, the number in "and 2 others" simply increases.

def likes(names):
    # your code here
    return []

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