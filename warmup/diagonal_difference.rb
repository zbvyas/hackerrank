#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/diagonal-difference/problem

num_rows_and_cols = gets.strip.to_i

matrix = []

num_rows_and_cols.times do
    row = gets.strip.split(' ').map(&:to_i)
    matrix << row
end

primary_diagonal = 0
secondary_diagonal = 0

for i in 0...num_rows_and_cols
  primary_diagonal += matrix[i][i]
  secondary_diagonal += matrix[(num_rows_and_cols - 1) - i][i]
end

print (primary_diagonal - secondary_diagonal).abs
