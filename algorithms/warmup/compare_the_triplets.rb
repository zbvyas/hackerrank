#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/compare-the-triplets/problem

alice = gets.strip.split(' ').map(&:to_i)
bob = gets.strip.split(' ').map(&:to_i)

alice_earned = 0
bob_earned = 0

alice.each_with_index do |a, i|
  (a > bob[i]) ? alice_earned += 1 : (a == bob[i]) ? '' : bob_earned += 1
end

print "#{alice_earned} #{bob_earned}"
