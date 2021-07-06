# frozen_string_literal: true

# Sum square difference
#
# https://projecteuler.net/problem=6

square = (1..100).sum**2
sum    = (1..100).map { |n| n**2 }.sum

puts(square - sum) # => 25164150
