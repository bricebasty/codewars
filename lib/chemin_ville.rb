# frozen_string_literal: true

def valid_walk?(walk)
  walk.length == 10 && walk.count('e') == walk.count('w') && walk.count('n') == walk.count('s') ? true : false
end
puts valid_walk?(%w[e e s w n n w s e w])
