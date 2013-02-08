#!/usr/bin/env ruby

MAX_FIB_NUMBER = 4_000_000

n = 1
last_numbers = [1, 1]
sum = 0
while n < MAX_FIB_NUMBER
  n = last_numbers.reduce(0) { |s, n| s+n }
  last_numbers = [last_numbers.last] << n
  sum += n if n%2 == 0
end
puts "The answer is #{sum}"
