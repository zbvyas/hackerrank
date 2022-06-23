#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/climbing-the-leaderboard/problem

n = gets.strip.to_i
scores = gets.strip.split(' ').map(&:to_i).sort.reverse
m = gets.strip.to_i
alice = gets.strip.split(' ').map(&:to_i).sort

ranks = {}
alice.each_with_index do |a, i|
  scores.each_with_index do |s, j|
    a > s ? '' : ranks.store(a, j)
    # scores are in descending order, so we know it's number 1 if looking at the first index
    if a > s && j == 0
      ranks.store(a, 1)
    end
  end
end
puts ranks.values
