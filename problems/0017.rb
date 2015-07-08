#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 +
# 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words,
# how many letters would be used?
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23
# letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out
# numbers is in compliance with British usage.

ONE_DIGIT = {
  :"1" => "One",
  :"2" => "Two",
  :"3" => "Three",
  :"4" => "Four",
  :"5" => "Five",
  :"6" => "Six",
  :"7" => "Seven",
  :"8" => "Eight",
  :"9" => "Nine"
}

TWO_DIGIT = {
  :"0" => "Ten",
  :"1" => "Eleven",
  :"2" => "Twelve",
  :"3" => "Thirteen",
  :"4" => "Fourteen",
  :"5" => "Fifteen",
  :"6" => "Sixteen",
  :"7" => "Seventeen",
  :"8" => "Eighteen",
  :"9" => "Nineteen"
}

TENS = {
  :"2" => "Twenty",
  :"3" => "Thirty",
  :"4" => "Forty",
  :"5" => "Fifty",
  :"6" => "Sixty",
  :"7" => "Seventy",
  :"8" => "Eighty",
  :"9" => "Ninety"
}


require "minitest/autorun"

def solution(last_number)
  letters = 0
  (last_number+1).times do |n|
    letters += "#{count_for_tousands(n)} #{count_for_hundreds(n)} #{count_for_tens(n)}".gsub(/\s+/, "").size
  end
  letters
end

def count_for_ones(number)
  ONE_DIGIT[number.to_s[-1,1].to_sym] unless number.to_s[-1,1].to_i == 0 &&
    number.to_s[-2,1] == 1
end

def count_for_tens(number)
  if number.to_s[-2,1].to_i == 1 && number > 9
    TWO_DIGIT[number.to_s[-1,1].to_sym]
  elsif number > 9
    "#{TENS[number.to_s[-2,1].to_sym]}#{joiner(number)}#{count_for_ones(number)}"
  else number <=9
    count_for_ones(number)
  end
end

def joiner(number)
  # "-" unless number.to_s[-2,1].to_i == 0
end

def count_for_hundreds(number)
  "#{ONE_DIGIT[number.to_s[-3,1].to_sym]} hundred#{ands(number)}" if number > 99 && number < 1000
end

def ands(number)
  " and" if number.to_s[-2,2].to_i > 0
end

def count_for_tousands(number)
  "one thousand" if number == 1000
end

class TestOne < Minitest::Test
  def test_solution
    assert_equal 19, solution(5)
  end
end

p "Solution: #{solution(1000)}"
