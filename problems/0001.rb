#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

require "minitest/autorun"

def solution(n)
  Array(1...n).select{ |i| i if i%3==0 || i%5==0 }.reduce(:+)
end

class TestOne < Minitest::Test
  def test_one_to_ten
    assert_equal solution(10), 23
  end
end

p "Solution: #{solution(1000)}"
