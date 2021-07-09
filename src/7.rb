# frozen_string_literal: true

# 10001st prime
#
# https://projecteuler.net/problem=7

require 'prime'

sieve = Prime::EratosthenesSieve.instance

index = 10_000
prime = sieve.get_nth_prime(index)

puts(prime) # => 104743
