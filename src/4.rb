# frozen_string_literal: true

# Largest palindrome product
#
# https://projecteuler.net/problem=4

products = Enumerator.new do |yielder|
  range = (100..999).reverse_each

  range.with_index(1) do |current, index|
    index.times do |offset|
      yielder << current**2 - offset**2
    end
  end
end

palindrome = products.find do |product|
  product.to_s == product.to_s.reverse
end

puts(palindrome) # => 906609
