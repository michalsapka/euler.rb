#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a^2 + b^2 = c^2

# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

require "minitest/autorun"

def solution(sum)
  a,b,c=1,1,1
  n = 1
  loop do
    m = n + 1
    while m < 1000
      a, b, c =  calculate_abc(n, m)
      return [a,b,c].reduce(:*) if a + b + c == sum
      m += 1
    end
    n += 1
  end

end

def calculate_abc(n,m)
  [
    (m * m )- (n * n),
    2 * m * n,
    (m * m) + (n * n)
  ]
end


class TestOne < Minitest::Test
  def test_solution
    assert_equal 60, solution(12)
  end
end

p "Solution: #{solution(1000)}"
