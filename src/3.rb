# frozen_string_literal: true

# Largest prime factor
#
# https://projecteuler.net/problem=3

require 'prime'

factors =
  Prime.prime_division(600_851_475_143)

prime, _exponent = factors.last

puts(prime) # => 6857
