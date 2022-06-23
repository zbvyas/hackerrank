#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/cats-and-a-mouse/problem

q = gets.strip.to_i

q.times do
  x_y_z = gets.strip.split(' ').map(&:to_i) # Cat A, Cat B, Mouse C
  cat_a = x_y_z[0]
  cat_b = x_y_z[1]
  mouse_c = x_y_z[2]

  cat_a_diff = (mouse_c - cat_a).abs
  cat_b_diff = (mouse_c - cat_b).abs

  winner = cat_a_diff < cat_b_diff ? 'Cat A' : cat_a_diff == cat_b_diff ? 'Mouse C' : 'Cat B'

  puts winner
end
