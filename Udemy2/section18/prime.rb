require 'prime'

prime_array = Prime.take_while { |p| p < 2_000_000}

# p prime_array

updated_array = prime_array.inject { |sum, x| sum + x }

p updated_array