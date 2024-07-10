def do_calc
  result = yield(7, 9)
  puts result
end

# Addition
puts "Addition result:"
do_calc { |a, b| a + b }

# Multiplication
puts "Multiplication result:"
do_calc { |a, b| a * b }