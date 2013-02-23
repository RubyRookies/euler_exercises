# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome
  # p "please use 3-digit numbers" if number1.to_s.length != 3 or number2.to_s.length != 3
  
  array = []
  (100...1000).each do |i|
    (100...1000).each do |j|
      array << i*j
    end
  end

  answer = []
  array.each do |el|
    if el.to_s.length > 2
      a = el.to_s
      b = a.reverse
      if a == b
        answer << a.to_i
      end
    end 
  end
 
  p answer.max
end

palindrome