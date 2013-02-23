# find the sum of digits in the answer to factorial.
# for example 10! = 10  9  ...  3  2  1 = 3628800 => 3 + 6 + ... = 27

def factsum(number)
  
# first do the factorial and get the answer
  answer = 1
  (1 .. number).each do |num|
    answer *= num
  end

# then break-down each digit into array (using .to_s) and add them up.
  sum = 0
  answer.to_s.split('').each do |el|
    sum += el.to_i
  end

  p sum
end

factsum(100)