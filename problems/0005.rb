#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require "minitest/autorun"

def solution(first, last)
  Array(first..last).reduce(:lcm)
end

class TestOne < Minitest::Test
  def test_solution
    assert_equal 2520, solution(1,10)
  end
end

p "Solution: #{solution(1,20)}"
