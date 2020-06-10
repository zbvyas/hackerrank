#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/special-palindrome-again/problem

n = gets.strip.to_i
s = gets.strip

def substr_count(s)
  char_map = {}
  count = 0
  s.chars.each { |char| char_map.store(char, s.count(char)) }

  # step 1: each char can be a substring itself
  count += s.chars.count

  puts "char count #{count}"

  # step 2: count all substrings with the same character
  char_map.each { |key, value| count += 1 if value > 1  }

  puts "same char count #{count}"

  # step 3: find char counts with even numbers,
  # and another with a single char that can be put in the middle of the even number
  middle = 0
  char_map.each { |key, value| middle += 1 if value == 1 }

  puts "middle #{middle}"

  even = 0
  char_map.each { |key, value| even += 1 if value % 2 == 0 }

  puts "even #{even}"

  count += (even * middle)

  return count
end

puts substr_count(s)
