# figure out number of lattice paths for n-by-n

def fact(number)
  result = 1
  while number > 1
    result *= number
    number -= 1
  end

  result 
end

def latticepath(length)
  if length == 1
    return 2
  elsif length == 0
    'that is a singularity'
  else 
    # These are Catalan numbers - (2*n)! / n!**2
    fact(2*length) / fact(length) ** 2
  end
end


p latticepath(20)