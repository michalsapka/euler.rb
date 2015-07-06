#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

require "minitest/autorun"
require "Prime"

def solution(n)
  Prime.first(n).last
end

class TestOne < Minitest::Test
  def test_solution
    assert_equal 13, solution(6)
  end
end

p "Solution: #{solution(10_001)}"
