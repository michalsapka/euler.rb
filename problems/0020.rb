#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!


require "minitest/autorun"

def solution(up_to)
  Array(1..up_to).reduce(:*).to_s.split("").map(&:to_i).reduce(:+)
end


class TestOne < Minitest::Test
  def test_solution
    assert_equal 27, solution(10)
  end
end

p "Solution: #{solution(100)}"
