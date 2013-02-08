#!/usr/bin/env ruby

MAX_NUM = 1000

sum = (1..MAX_NUM-1).reduce(0) do |sum, n|
  (n%3 == 0 || n%5 == 0) ? sum + n : sum
end

puts "The answer is #{sum}"
