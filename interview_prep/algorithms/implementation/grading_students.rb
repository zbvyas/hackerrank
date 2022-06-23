#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/grading/problem

num_students = gets.strip.to_i
grades = []

num_students.times do
  grades << gets.strip.to_i
end

grades.each_with_index do |grade, index|
  next if grade < 38       # skip if it's a failing grade
  next if (grade % 5) == 0 # skip if it's already rounded to a multiple of 5
  diff = 5 - (grade % 5)
  next if diff >= 3
  grades[index] = grade + diff
end

grades.each { |grade| puts grade }
