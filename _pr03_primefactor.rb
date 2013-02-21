# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def primefactors(number)
  factors = []
  i = 1

  while i < number
    if number % i == 0 
      factors << i
    end
    i += 1
  end

  a = factors.length
  el = 0
  primes = [1]
  while el < a
    if Prime.prime?(factors[el])
      primes << factors[el]
    end
    el += 1
  end

  p primes
end

primefactors(200000000)