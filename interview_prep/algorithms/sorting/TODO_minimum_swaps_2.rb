#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/minimum-swaps-2/problem

def insertion_sort(n, arr)
  swaps = 0
  for i in 0...n
    for j in i+1...n
      # swap the values if i > j
      # i is the current position, and we compare to the remaining i+1 to n indices
      if arr[i] > arr[j]
        arr[i], arr[j] = arr[j], arr[i]
        swaps += 1
        puts "#{arr}"
      end
    end
  end
  return swaps
end

n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

puts insertion_sort(n, arr)
