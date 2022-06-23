#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.caom/challenges/alternating-characters/problem

q = gets.strip.to_i

q.times do
  s = gets.strip
  deletions = 0

  s.chars.each_with_index do |char, index|
    deletions += 1 if s[index + 1] == char
  end

  puts deletions
end
