#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/repeated-string/problem

s = gets.strip
n = gets.strip.to_i

# check how many a's are in the string
a_in_string = s.count('a')
# check how many complete repeats there are using integer division
full_repeats = n / s.length

total = a_in_string * full_repeats

# check the remaining characters that get cut off
total += s.slice(0, n % s.length).count('a')

puts total
