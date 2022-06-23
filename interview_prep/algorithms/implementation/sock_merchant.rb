#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/sock-merchant/problem

n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

sock_hash = {}

arr.each do |num|
  count = 1
  count = sock_hash[num].to_i + 1 if sock_hash.has_key?(num)
  sock_hash.store(num, count)
end

pairs = 0

sock_hash.each do |key, value|
  pairs += value / 2
end

puts pairs
