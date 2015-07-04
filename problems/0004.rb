#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

require "minitest/autorun"
require "Prime"

def solution(n)
  palindromes = []
  ("9" * n).to_i.downto(("1" + "0" * (n-1)).to_i) do |i|
    ("9" * n).to_i.downto(("1" + "0" * (n-1)).to_i) do |g|
      number = g * i
      palindromes << number if number.to_s == number.to_s.reverse
    end
  end
  palindromes.max
end

class TestOne < Minitest::Test
  def test_solution
    assert_equal 9009, solution(2)
  end
end

p "Solution: #{solution(3)}"
