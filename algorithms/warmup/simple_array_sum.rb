#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/simple-array-sum/problem

len = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

sum = 0
arr.each { |num| sum += num }

print sum
