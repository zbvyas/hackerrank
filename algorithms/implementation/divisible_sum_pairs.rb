#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/divisible-sum-pairs/problem

n_k = gets.strip.split(' ').map(&:to_i)
ar = gets.strip.split(' ').map(&:to_i)

count = 0

n = n_k[0]
k = n_k[1]

ar.each_with_index do |num, index|
  for i in (index + 1)...n
    count += 1 if (num + ar[i]) % k == 0
  end
end

print count
