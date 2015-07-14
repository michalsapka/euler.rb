#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2^1000?

require "minitest/autorun"
require "Prime"

def solution(number, power)
  (number**power).to_s.split("").map(&:to_i).reduce(:+)
end

class TestOne < Minitest::Test
  def test_solution
    assert_equal 26, solution(2,15)
  end
end

p "Solution: #{solution(2,1000)}"
