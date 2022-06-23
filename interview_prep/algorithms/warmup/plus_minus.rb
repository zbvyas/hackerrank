#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/plus-minus/problem

arr_len = gets.strip.to_f
arr = gets.strip.split(' ').map(&:to_f)

positive = 0
negative = 0
zeros = 0

arr.each { |num| (num > 0) ? positive += 1 : (num < 0) ? negative += 1 : zeros += 1 }

puts sprintf('%.6f', (positive / arr_len))
puts sprintf('%.6f', (negative / arr_len))
puts sprintf('%.6f', (zeros / arr_len))
