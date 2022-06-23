#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/ctci-ransom-note/problem

m_n = gets.strip.split(' ').map(&:to_i)
magazine = gets.strip.split(' ')
note = gets.strip.split(' ')

m = m_n[0] # number of words in the magazine
n = m_n[1] # number of words in the note

def check_magazine(magazine, note)
  return false if magazine.length < note.length

  magazine_hash = {}
  note_hash = {}

  magazine.each do |word|
    count = 1
    count += 1 if magazine_hash.has_key?(word)
    magazine_hash.store(word, count)
  end

  note.each do |word|
    count = 1
    count += 1 if note_hash.has_key?(word)
    note_hash.store(word, count)
  end

  note_hash.each do |key, value|
    return false if !magazine_hash.has_key?(key)
    next if magazine_hash[key].to_i == value
    return false
  end

  return true
end

replica = check_magazine(magazine, note)

puts replica ? 'Yes' : 'No'
