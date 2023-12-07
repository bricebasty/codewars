iterator = 0
while y == 1
  while_var = 10 #
  iterator += 1 # y now holds the value 1
end
p while_var

iterator = 0
loop do
  loop_var = 10
  iterator += 1
  break unless iterator == 1
end
p loop_var
