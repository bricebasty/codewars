# frozen_string_literal: true

require 'pry'

def solution(numbers_list)
  numbers_list.chunk_while { |n1, n2| n2 - n1 == 1 }
              .map { |set| set.size > 2 ? "#{set.first}-#{set.last}" : set }
              .join(',')
end

puts solution([-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20])
