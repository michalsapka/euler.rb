#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require "minitest/autorun"
require "Prime"

def solution(n)
  n.prime_division.flatten.max
end

class TestOne < Minitest::Test
  def test_one_to_ten
    assert_equal 29, solution(13195)
  end
end

p "Solution: #{solution(600851475143)}"
