#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/insertionsort1/problem

def insertion_sort(n, arr)
  temp = arr[n-1]
  for i in (n-2).downto(0)
    if arr[i] > temp
      arr[i + 1] = arr[i]
    else
      arr[i + 1] = temp
    end
    puts arr.join(' ')
  end
end

n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

insertion_sort(n, arr)
