def puts_in_console(line, test_str, arg_str)
  # Outputs method_return_value == expected_return_value
  puts  line.sub(test_str, "puts 'Test result is ' + (")
            .sub(arg_str, ') == ')
            .sub(/[);]+$\n/, '') << ').to_s.upcase'
  # Outputs method_return_value
  puts  line.sub(test_str, 'p ')
            .sub(arg_str, ') # ')
            .sub(/[);]+$/, '')
  puts
end

def remove_tests(var)
  var.each_line do |line|
    case line
    when /Test\.assert_equals/i
      puts_in_console(line, /Test\.assert_equals\(/, /\),\s?/i)
    when /expect\(/
      puts_in_console(line, /expect\(/, /\)\)\.to\seq\(\s?/)
    end
  end
end

tests = <<~TEST
test.assert_equals(square_digits(9119), 811181)
test.assert_equals(square_digits(0), 0)
TEST

remove_tests(tests)
