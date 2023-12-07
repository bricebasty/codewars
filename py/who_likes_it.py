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