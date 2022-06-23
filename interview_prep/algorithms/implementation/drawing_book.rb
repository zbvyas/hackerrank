#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/drawing-book/problem

n = gets.strip.to_i
pg = gets.strip.to_i

total = n / 2
start_to_pg = pg / 2
end_to_pg = total - start_to_pg

puts start_to_pg > end_to_pg ? end_to_pg : start_to_pg
