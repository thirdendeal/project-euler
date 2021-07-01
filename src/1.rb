# frozen_string_literal: true

# Multiples of 3 and 5
#
# https://projecteuler.net/problem=1

range = 1.upto(999)

multiples = range.select do |number|
  number.modulo(3).zero? || number.modulo(5).zero?
end

puts(multiples.sum) # => 233168
