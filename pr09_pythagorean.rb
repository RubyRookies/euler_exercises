# find pythagorean triangle such that a + b + c = 1000.  Find the product of the numbers.

def pythagoras
  a, b, c = {}, {}, {}
  i = 1

  (200..500).each do |el|
    a[el] = el**2
    b[el] = el**2
    c[el] = el**2
  end

  p a, b, c

  c.each do |key_c, value_c|
    a.each do |key1, value1|
      b.each do |key2, value2|
        if a[key1].to_i + b[key2].to_i == c[key_c].to_i
          # puts "#{value_c} = squares of #{key1} and #{key2}"
          if key1+key2+key_c == 1000
            p key1*key2*key_c
          end
        end
      end
    end
  end

end

pythagoras