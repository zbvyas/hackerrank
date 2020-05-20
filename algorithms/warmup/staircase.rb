#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/staircase/problem

size = gets.strip.to_i

for i in 1..size
  spaces = size - i
  pounds = i
  puts "#{' '*spaces}#{'#'*pounds}"
end
