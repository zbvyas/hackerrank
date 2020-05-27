#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/icecream-parlor/problem

t = gets.strip.to_i

t.times do
  m = gets.strip.to_i
  n = gets.strip.to_i
  arr = gets.strip.split(' ').map(&:to_i)

  flavors = []
  arr.each_with_index do |num, index|
    leftover = m - num
    next unless arr.include?(leftover) && arr.index(leftover) != index
    flavors.push((index + 1), (arr.index(leftover) + 1))
    break
  end

  puts flavors.sort.join(' ')
end
