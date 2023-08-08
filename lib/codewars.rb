# frozen_string_literal: true

def no_boring_zeros(num)
  num = num.to_s.chars.map(&:to_i)
  num.delete_if.with_index { |e, i| e.zero? && (num[i + 1]).zero? || num[i + 1].nil? }
  num.join.to_i
  p num
end
