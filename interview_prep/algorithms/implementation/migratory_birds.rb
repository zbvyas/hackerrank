#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/migratory-birds/problem

n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

bird_hash = {}

arr.each do |num|
  count = 1
  count = bird_hash[num].to_i + 1 if bird_hash.has_key?(num)
  bird_hash.store(num, count)
end

max = 0
bird_hash.each do |key, value|
  max = value if value > max
  max = value if value == max && bird_hash.key(max) > key
end

puts bird_hash.key(max)
