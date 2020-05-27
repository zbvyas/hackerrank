#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/angry-professor/problem

t = gets.strip.to_i

t.times do
  n_k = gets.strip.split(' ').map(&:to_i)
  arr = gets.strip.split(' ').map(&:to_i)

  students = n_k[0]
  threshold = n_k[1]

  late = 0
  arr.each do |a|
    next if a <= 0
    late += 1
  end

  puts (students - late) >= threshold ? "NO" : "YES"
end
