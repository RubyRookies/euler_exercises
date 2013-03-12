# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'
require 'benchmark'

# First figure out each factor of the number
def primefactors(number)

  factors = []
  primefactors = []
  i, j = 2, 0

  while i < number
    if number % i == 0 
      factors << i
    end
    i += 1
  end

  while j < factors.length
    if factors[j].prime?
      primefactors << factors[j]
    end
    j += 1
  end

  p factors
  p primefactors
end

primefactors(13475143)
# 600851475143