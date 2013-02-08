#!/usr/bin/env ruby

def is_palindrome(s)
  s == s.reverse
end

answer = 0
(999).downto(100) do |n|
  n.downto(100) do |m|
    product = n*m
    break if product < answer
    answer = product if is_palindrome(product.to_s) && product > answer
  end
  break if n**2 < answer
end

puts "The answer is #{answer}"
