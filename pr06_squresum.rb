# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

def squarediff(number)
  answers = []
  sum_of_squares = 0
  square_of_sum = 0

  (0 .. number).each do |el|
    sum_of_squares += el*el
  end
  
  (0 .. number).each do |el|
   square_of_sum += el
  end

  answer = square_of_sum ** 2 - sum_of_squares
end

p squarediff(100) # 25164150