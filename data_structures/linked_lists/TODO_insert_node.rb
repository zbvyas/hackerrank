#!/bin/ruby
# frozen_string_literal: true

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/insert-a-node-at-a-specific-position-in-a-linked-list/problem

# With Ruby, the shorthand way would be to use Array#insert - this handles insert & shifting elements

def insert_node_at_position(llist, data, position)
  llist.insert(position, data)
end

n = gets.strip.to_i

linked_list = []
n.times do
  linked_list << gets.strip.to_i
end

data = gets.strip.to_i
position = gets.strip.to_i

new_linked_list = insert_node_at_position(linked_list, data, position)

print new_linked_list.join(' ').to_s
