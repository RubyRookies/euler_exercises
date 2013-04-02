# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 21000?

def powerdigitsum(exponent)
  product = 1
  sum = 0
  
  product = 2 ** exponent
  
  array = product.to_s.split(//)
  array.each do |el|
    sum += el.to_i
  end

  p sum
end

powerdigitsum(1000)