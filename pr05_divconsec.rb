# 2520 is the smallest multiple that can be divided by each of the multiples from 1 to 10 without any remainder.
# What is the smallest positive multiple that is evenly divisible by all of the multiples from 1 to 20?

require 'prime'

def smallestmultiple(count)

  testcounts = []
  i, j, k = 1, 0, 1
  multiple = 1
  factors = []

  # generates numbers needed to run LCM test by
  count.times do 
    testcounts << i
    i += 1
  end

  # for any given start, the minimum is going to be at least the mulitple of primes  
  # then iterate up to multiply any other factor that is not evenly divisble
  while j < count
    if Prime.prime?(testcounts[j]) || multiple % testcounts[j] != 0
      multiple *= testcounts[j].to_i 
      factors << multiple
    end
    j += 1
  end


  p multiple
  p factors  
  
end

smallestmultiple(10)