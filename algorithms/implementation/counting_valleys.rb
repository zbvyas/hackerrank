#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/counting-valleys/problem

n = gets.strip.to_i
steps = gets.strip

sea_level = 0
valleys = 0
steps.chars.each do |step|
  sea_level += 1 if step == 'U'
  sea_level -= 1 if step == 'D'
  valleys += 1 if sea_level == 0 && step == 'U'
end

puts valleys
