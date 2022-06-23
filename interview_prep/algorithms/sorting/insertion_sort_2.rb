#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/insertionsort2/problem

def insertion_sort(n, arr)
  for i in 0...n
    for j in i+1...n
      # swap the values if i > j
      # i is the current position, and we compare to the remaining i+1 to n indices
      arr[i], arr[j] = arr[j], arr[i] if arr[i] > arr[j]
    end
    puts arr.join(' ')
  end
end

n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

insertion_sort(n, arr)
