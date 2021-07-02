# frozen_string_literal: true

# Even Fibonacci numbers
#
# https://projecteuler.net/problem=2

def fibonacci(current, following)
  Enumerator.new do |yielder|
    loop do
      yielder << current

      current, following = following, following + current
    end
  end
end

sequence = fibonacci(1, 2).take_while do |term|
  term < 4_000_000
end

puts(sequence.select(&:even?).sum) # => 4613732
