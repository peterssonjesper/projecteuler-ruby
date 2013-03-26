factor = 0
while (factor += 1)
  divisor = [19, 18, 17, 16, 15, 14, 13, 12, 11].detect { |x| factor*20 % x != 0 }
  break if divisor.nil?
end

puts "The answer is #{factor*20}"
