#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem

n = gets.strip.to_i
jumps = gets.strip.split(' ').map(&:to_i)

i = 0
min_jumps = 0

while i < n
  # break out of the loop if we're at the second to last index
  break if i == (n - 1)
  if jumps[i + 2] == 0
    min_jumps += 1
    i = i + 2
  else
    min_jumps += 1
    i = i + 1
  end
end

puts min_jumps
