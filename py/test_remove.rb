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
test.assert_equals(is_valid_IP('12.255.56.1'),     True)
test.assert_equals(is_valid_IP(''),                False)
test.assert_equals(is_valid_IP('abc.def.ghi.jkl'), False)
test.assert_equals(is_valid_IP('123.456.789.0'),   False)
test.assert_equals(is_valid_IP('12.34.56'),        False)
test.assert_equals(is_valid_IP('12.34.56 .1'),     False)
test.assert_equals(is_valid_IP('12.34.56.-1'),     False)
test.assert_equals(is_valid_IP('123.045.067.089'), False)
test.assert_equals(is_valid_IP('127.1.1.0'),        True)
test.assert_equals(is_valid_IP('0.0.0.0'),          True)
test.assert_equals(is_valid_IP('0.34.82.53'),       True)
test.assert_equals(is_valid_IP('192.168.1.300'),   False)
TEST

remove_tests(tests)
