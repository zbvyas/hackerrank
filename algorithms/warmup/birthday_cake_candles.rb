#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/birthday-cake-candles/problem

num_candles = gets.strip.to_i
candle_heights = gets.strip.split(' ').map(&:to_i)

max = 0
tallest_candles = 0

candle_heights.each { |height| max = height if height > max }
candle_heights.each { |height| tallest_candles += 1 if height == max }

print tallest_candles
