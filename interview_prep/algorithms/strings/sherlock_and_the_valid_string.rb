#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/sherlock-and-valid-string/problem

s = gets.strip

def valid_string(s)
  char_map = {}
  s.chars.each { |char| char_map[char] = s.count(char) }
  counts = char_map.values.sort
  # return true if they are all the same length
  return true if counts.uniq.length == 1

  min = counts[0]
  deletions = 0
  additions = 0

  counts.each do |value|
    return false if (value - min) > 1
    deletions += 1 if value > min
    additions += 1 if value < min
  end
  return additions == 0 && deletions <= 1
end

valid = valid_string(s)

puts valid ? 'YES' : 'NO'
