require 'prime'
sum = Prime.each(2*10**6).reduce { |r, x| r += x }
puts "The answer is #{sum}"
