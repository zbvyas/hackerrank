#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/array-left-rotation/problem

arr_count_rotate = gets.strip.split(' ').map(&:to_i)
arr = gets.strip.split(' ').map(&:to_i)

arr_length = (arr_count_rotate[0] - 1)
rotate = arr_count_rotate[1]

# Brute Force Method
# 0, 1, 2, 3
for i in 0...rotate
  first = arr[0]

  # 0, 1, 2, 3
  for j in 0...arr_length
    arr[j] = arr[j+1]
  end

  arr[arr_length] = first
end

print "#{arr.join(' ')}"

# The Brute force method above has time complexity O(n * d) -> n is the size of the array and d is the number of rotations
# Space complexity is constant, O(1), no extra space is used

# TODO: Faster approach...
