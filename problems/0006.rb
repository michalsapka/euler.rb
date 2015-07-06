#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


require "minitest/autorun"


def solution(n)
  sum_squares =  Array(1..n).map { |i| i*i }.reduce(:+)
  sum = Array(1..n).reduce(:+)
  (sum * sum) - sum_squares
end

class TestOne < Minitest::Test
  def test_solution
    assert_equal 2640, solution(10)
  end
end

p "Solution: #{solution(100)}"
