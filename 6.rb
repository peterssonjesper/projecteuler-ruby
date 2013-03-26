lhs = (1..100).reduce { |result, x| result += x**2 }
rhs = ((1..100).reduce { |result, x| result += x })**2
puts "The answer is #{rhs-lhs}"
