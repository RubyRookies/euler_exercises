# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallestmultiple
  number, i = 1, 1
  factors = []
  j = 2

  while i <= 10
    number *= i
    i += 1
  end

  while j < number
    if number % j == 0 
      factors << j
    end
    j += 1
  end

  p factors 
end 

smallestmultiple