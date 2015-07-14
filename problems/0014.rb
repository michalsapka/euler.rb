#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet
# (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

def solution(biggest_start)
  max = 0
  max_size = 0
  Array(13..biggest_start).each do |i|
    current_length = generate_collatz_size(i)
    if max_size < current_length
      max = i
      max_size = current_length
    end
  end
  p max_size
  max
end

def generate_collatz_size(start)
  seqence_length = 1
  current = start
  loop do
    seqence_length += 1
    current = current.even? ? even_at(current) : odd_at(current)
    return seqence_length if current <= 1
  end
end

def even_at(n)
  n / 2
end

def odd_at(n)
  3 * n + 1
end

p "Solution: #{solution(1_000_000)}"
