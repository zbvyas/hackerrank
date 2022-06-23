#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/sparse-arrays/problem

n = gets.strip.to_i

strings = []
queries = []

n.times do
  strings << gets.strip
end

q = gets.strip.to_i

q.times do
  queries << gets.strip
end

counts = Hash.new
queries.each do |query|
  counts.store(query, 0)
end

for i in 0...strings.length
  counts.each do |key, val|
    if strings[i] == key
      counts[key] += 1
    end
  end
end

puts counts.values
