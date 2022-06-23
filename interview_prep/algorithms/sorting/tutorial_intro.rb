#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/tutorial-intro/problem

def intro_tutorial(arr, v)
  arr.index(v)
end

v = gets.strip.to_i
n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

puts intro_tutorial(arr, v)
