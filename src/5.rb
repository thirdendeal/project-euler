# frozen_string_literal: true

# Smallest multiple
#
# https://projecteuler.net/problem=5

multiples = 2520.step(by: 2520)

smallest_multiple = multiples.find do |multiple|
  (11..20).all? do |divisor|
    multiple.modulo(divisor).zero?
  end
end

puts(smallest_multiple) # => 232792560
