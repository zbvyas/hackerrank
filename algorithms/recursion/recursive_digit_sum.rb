#!/bin/ruby
# frozen_string_literal: true

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/recursive-digit-sum/problem

def super_digit(num, multiplier = 1)
  return num if num.to_i < 10

  sum = 0
  num.to_s.each_char do |char|
    sum += char.to_i
  end
  sum *= multiplier
  super_digit(sum)
end

n_k = gets.strip.split(' ')

n = n_k[0]
k = n_k[1].to_i

s = super_digit(n, k)

puts s
