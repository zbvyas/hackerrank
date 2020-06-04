#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/electronics-shop/problem

b_n_m = gets.strip.split(' ').map(&:to_i)

keyboards = gets.strip.split(' ').map(&:to_i)
drives = gets.strip.split(' ').map(&:to_i)

budget = b_n_m[0]

def get_money_spent(keyboards, drives, budget)
  spent = -1
  keyboards.sort.reverse.each do |keyboard|
    leftover = budget - keyboard
    available_drives = drives.select { |d| d <= leftover }.sort.reverse
    next unless available_drives.length > 0
    next unless keyboard + available_drives[0] > spent
    spent = keyboard + available_drives[0]
  end
  return spent
end

puts get_money_spent(keyboards, drives, budget)
