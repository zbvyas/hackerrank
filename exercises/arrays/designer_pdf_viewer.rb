#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/designer-pdf-viewer/problem

alphabet = ('a'..'z').to_a

heights = gets.strip.split(' ').map(&:to_i)
word = gets.strip.split('')

letter_heights = {}

alphabet.each_with_index do |letter, index|
  letter_heights.store(letter, heights[index])
end

max_height = 0
area = 0

word.each do |w|
  next if letter_heights[w] < max_height
  max_height = letter_heights[w]
end

area = max_height * word.length
puts area
