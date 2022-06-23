#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/2d-array/problem

matrix = []

6.times do
  row = gets.strip.split(' ').map(&:to_i)
  matrix << row
end

# 4 hourglasses per row
# 4 rows have hourglasses
# = 16 hourglasses total

puts
puts
puts
puts

matrix.each do |arr|
  puts arr.join(' ')
end

for i in 0...6
  # if the next two indices don't exist, then we can't form an hourglass
  # if matrix[i][i + 2]
  #   puts "#{matrix[i][i]} + #{matrix[i][i + 1]} + #{matrix[i][i + 2]}"
  # end
  for j in 0...6
    if matrix[i][i + 2]
      puts "#{matrix[i][i]} + #{matrix[i][i + 1]} + #{matrix[i][i + 2]}"
    end
  end
end
