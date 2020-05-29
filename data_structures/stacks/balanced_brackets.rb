#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/balanced-brackets/problem

n = gets.strip.to_i

n.times do
  stack = []
  is_balanced = false

  str = gets.strip

  str.chars.each do |char|
    case char
    when '{'
      stack.push('}')
    when '('
      stack.push(')')
    when '['
      stack.push(']')
    else
      break if stack.empty? || char != stack.last
      stack.pop
    end
  end
  puts stack.empty? ? 'YES' : 'NO'
end
