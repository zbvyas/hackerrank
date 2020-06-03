#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/picking-numbers/problem

def picking_numbers(arr)
  temp = arr[0]
  initial_subarray = arr.select { |a| (temp - a).abs <= 1 }
  remainder_arr = arr - initial_subarray
  max = initial_subarray.length
  for i in 0...remainder_arr.length
    temp = remainder_arr.select { |a| (remainder_arr[i] - a).abs <= 1 }
    next if temp.length <= max
    max = temp.length
    remainder_arr = remainder_arr - temp
    break if remainder_arr.length < max
  end
  puts max
end

n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i).sort

picking_numbers(arr)
