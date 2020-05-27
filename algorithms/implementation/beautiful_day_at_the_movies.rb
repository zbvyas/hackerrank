#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/beautiful-days-at-the-movies/problem

i_j_k = gets.strip.split(' ').map(&:to_i)

i = i_j_k[0] # starting
j = i_j_k[1] # ending
k = i_j_k[2] # divisor

# whole number = beautiful, fraction - not beautiful
beautiful = 0
for x in i..j
  rev = x.to_s.reverse.to_i
  beautiful += 1 if ((x - rev).abs % k) == 0
end

puts beautiful
