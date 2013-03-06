# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'
require 'benchmark'

# First figure out each factor of the number
def primefactors(number)

  factors = []
  i = 2

  while i < number
    if number % i == 0 
      factors << i
    end
    i += 1
  end


# Then iterate through the factors and determine which is prime.
  primes = Prime.first(number)
  largest = []


  factors.each do |el|
    if primes.include?(el)
      largest << el
    end
  end


  p primes
end

primefactors(10)
# 600851475143