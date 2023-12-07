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
test.assert_equals(digital_root(16), 7)
test.assert_equals(digital_root(942), 6)
test.assert_equals(digital_root(132189), 6)
test.assert_equals(digital_root(493193), 2)
TEST

remove_tests(tests)
