#!/usr/bin/env ruby
# -*- coding: utf-8 -*-



# A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4.
# If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic
#  permutations of 0, 1 and 2 are:

# 012   021   102   120   201   210

# What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

require "minitest/autorun"

def solution(arr, nth)
  arr.permutation.to_a[nth-1].join("")
end


class TestOne < Minitest::Test
  def test_solution
    assert_equal "012", solution([0,1,2], 1)
    assert_equal "210", solution([0,1,2], 6)
  end
end

p "Solution: #{solution([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 1_000_000)}"
