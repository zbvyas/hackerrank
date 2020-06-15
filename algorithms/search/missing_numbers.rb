#!/bin/ruby
# frozen_string_literal: true

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/missing-numbers/problem

def missing_numbers(arr, brr)
  missing = []

  brr.uniq.each do |num|
    missing << num if (arr.count(num) != brr.count(num)) && !missing.include?(num)
  end

  missing.sort
end

n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)
m = gets.strip.to_i
brr = gets.strip.split(' ').map(&:to_i)

puts missing_numbers(arr, brr).join(' ').to_s
