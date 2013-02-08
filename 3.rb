#!/usr/bin/env ruby
require 'prime'

NUM = 600851475143

answer = Prime.prime_division(NUM).last.first

puts "The answer is #{answer}"
