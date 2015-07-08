#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 +
# 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words,
# how many letters would be used?
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23
# letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out
# numbers is in compliance with British usage.


require "minitest/autorun"

def solution(factors)
  n = factors
  triangle = Array(1..factors).reduce(:+)
  loop do
    n += 1
    triangle +=n
    p triangle
    return triangle if Array(1..triangle/2).count{|i| triangle%i ==0 } + 1 > factors
  end
  triangle
end

class TestOne < Minitest::Test
  def test_solution
    assert_equal 28, solution(5)
  end
end

p "Solution: #{solution(500)}"
