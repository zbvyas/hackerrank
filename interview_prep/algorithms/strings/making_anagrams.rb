#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/ctci-making-anagrams/problem

a = gets.strip
b = gets.strip

char_map = {}
('a'..'z').each do |char|
  char_map[char] = (a.count(char) - b.count(char)).abs
end

deletions = 0

char_map.values.each { |value| deletions += value }

puts deletions
