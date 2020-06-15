#!/bin/ruby
# frozen_string_literal: true

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/pairs/problem

require 'set'

def pairs(target, arr)
  pairs = 0
  arr.each_with_object(Set[]) do |num, set|
    pairs += 1 if set.include?(num + target)
    pairs += 1 if set.include?(num - target)
    set.add(num)
  end
  pairs
end

n_k = gets.strip.split(' ').map(&:to_i)
target = n_k[1]
arr = gets.strip.split(' ').map(&:to_i)

puts pairs(target, arr)
