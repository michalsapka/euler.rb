#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require "minitest/autorun"
require "Prime"

def solution(max)
  sum = 0
  Prime.each do |i|
    break if i > max
    sum += i
  end
  sum
end

class TestOne < Minitest::Test
  def test_solution
    assert_equal 17, solution(10)
  end
end

p "Solution: #{solution(2_000_000)}"
