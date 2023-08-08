# def is_valid_walk(walk)
#   walk.each do |i|
#     if walk.length == 10 && walk[i.to_i] != walk[i.to_i + 1] && walk.count('n') == walk.count('s') && walk.count('e') == walk.count('w')
#       return true
#     else
#       return false
#     end
#   end
# end


def is_valid_walk(walk)
  walk.length == 10 && walk.count('e') == walk.count('w') && walk.count('n') == walk.count('s') ? true : false
end
puts is_valid_walk(['e', 'e', 's', 'w', 'n', 'n', 'w', 's', 'e', 'w'])