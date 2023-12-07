def puts_in_console(line, test_str, arg_str)
  # Outputs method_return_value == expected_return_value
  puts  line.sub(test_str, "print('Test result is ' + str(")
            .sub(arg_str, ') == ')
            .sub(/[);]+$\n/, '') << '))'
  # Outputs method_return_value
  puts  line.sub(test_str, 'print(')
            .sub(arg_str, ')) # ')
            .sub(/[);]+$/, '')
  puts
end

def remove_tests(var)
  var.each_line do |line|
    case line
    when /test\.assert_equals/
      puts_in_console(line, /test\.assert_equals\(/, /\),\s?/)
    end
  end
end

tests = <<~TEST
test.assert_equals(likes([]), 'no one likes this')
test.assert_equals(likes(['Peter']), 'Peter likes this')
test.assert_equals(likes(['Jacob', 'Alex']), 'Jacob and Alex like this')
test.assert_equals(likes(['Max', 'John', 'Mark']), 'Max, John and Mark like this')
test.assert_equals(likes(['Alex', 'Jacob', 'Mark', 'Max']), 'Alex, Jacob and 2 others like this')
TEST

remove_tests(tests)
