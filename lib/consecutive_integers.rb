# frozen_string_literal: true

require 'pry'

def solution(numbers_list)
  modified_list = numbers_list.map.with_index do |number, index|
    iterator = 1
    number_copy = number
    while numbers_list[index + iterator] == number_copy + iterator
      number = "#{numbers_list[index]}-#{numbers_list[index + iterator]}"
      iterator += 1
    end
    number
  end
  numbers_list.join(',')
end

def solution(numbers_list)
  modified_list = []
  index = 0
  while index < numbers_list.length
    if numbers_list[index + 1] == numbers_list[index] + 1 && numbers_list[index + 2] == numbers_list[index] + 2
      start = numbers_list[index]
      while numbers_list[index + 1] == numbers_list[index] + 1
        index += 1
      end
      modified_list << "#{start}-#{numbers_list[index]}"
    else
      modified_list << numbers_list[index].to_s
    end
    index += 1
  end
  modified_list.join(',')
end


def solution(list)
  results = []
  start = list[0]

  list[1..-1].each_with_index do |n, i|
    if n != list[i] + 1 || i == list.length - 2
      if n == list[i] + 1
        results << "#{start}-#{n}"
      else
        if start != list[i]
          results << "#{start}-#{list[i]}"
        else
          results << start.to_s
        end
        start = n
      end
    end
  end
  results.join(",")
end


puts solution([-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20])
