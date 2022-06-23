#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/strange-advertising/problem

n = gets.strip.to_i

total = 0

for i in 1..n
  if i == 1
    total += (5/2).floor
  else
    received = ((5/2).floor) * 3
    total += (received/2).floor
  end
end
puts "#{total}"
