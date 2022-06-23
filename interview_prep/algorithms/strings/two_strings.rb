#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/two-strings/problem

def two_strings(s1, s2)
  common = false
  ('a'..'z').to_a.each do |letter|
    common = s1.index(letter) != nil && s2.index(letter) != nil
    break if common
  end
  common
end

p_cases = gets.strip.to_i

p_cases.times do
  s1 = gets.strip
  s2 = gets.strip
  common = two_strings(s1, s2)
  puts common ? 'YES' : 'NO'
end
