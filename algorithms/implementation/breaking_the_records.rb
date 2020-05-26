#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem

n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

max = arr[0]
min = arr[0]

min_count = 0
max_count = 0

arr.each do |num|
  if num < min
    min_count += 1
    min = num
  end
  if num > max
    max_count += 1
    max = num
  end
end

print "#{max_count} #{min_count}"
