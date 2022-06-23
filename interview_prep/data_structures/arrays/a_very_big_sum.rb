#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/a-very-big-sum/problem

arr_count = gets.to_i
arr = gets.strip.split(' ').map(&:to_i)
sum = 0

arr.each { |a| sum += a  }
puts sum
