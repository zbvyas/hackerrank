#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/reduced-string/problem

s = gets.strip

arr = s.split('')
to_delete = []

for i in 0...arr.length
  next unless arr[i] == arr[i+1]
  to_delete.push(arr[i], arr[i+1])
end

reduced = (arr - to_delete).length > 0 ? (arr - to_delete).join : 'Empty String'

puts reduced
