#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem

arr_count_rotate = gets.strip.split(' ').map(&:to_i)
arr = gets.strip.split(' ').map(&:to_i)

arr_length = (arr_count_rotate[0] - 1)
rotate = arr_count_rotate[1]

# 0, 1, 2, 3
for i in 0...rotate
  first = arr[0]
  puts "puts #{first}"

  # 0, 1, 2, 3
  for j in 0...arr_length
    # arr[0] = arr[0+1]
    # arr[1] = arr[1+1]
    # arr[2] = arr[2+1]
    # arr[3] = arr[3+1]
    arr[j] = arr[j+1]
  end

  arr[arr_length] = first
end

print "#{arr.join(' ')}"
