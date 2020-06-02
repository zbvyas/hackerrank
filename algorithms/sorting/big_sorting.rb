#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/big-sorting/problem

n = gets.strip.to_i

def big_sort(unsorted)
  unsorted.map!(&:to_i)
  unsorted.sort
end

unsorted = []

n.times do
  unsorted << gets.strip
end

puts big_sort(unsorted)
