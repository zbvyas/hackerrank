#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/mini-max-sum/problem

arr = gets.strip.split(' ').map(&:to_i)

min = arr[0]
max = arr[0]

minimum_sum = 0
maximum_sum = 0

arr.each do |num|
  next if num <= max
  max = num
end

arr.each { |num| minimum_sum += num unless num == max }

arr.each do |num|
  next if num >= min
  min = num
end

arr.each { |num| maximum_sum += num unless num == min }

print "#{minimum_sum} #{maximum_sum}"

# TODO: Fix Test Case 13...
# In a real-world example, with ruby we can just use array.sort and array.sort.reverse to sort
# the arrays and get the sum excluding the max and min values
