#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/arrays-ds/problem

n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

a_start = 0
a_end = n - 1

while a_start < a_end
  temp = arr[a_start];
  arr[a_start] = arr[a_end];
  arr[a_end] = temp;
  a_start += 1
  a_end -= 1
end

print arr.join(' ')
