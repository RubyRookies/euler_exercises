def spiral(upper)
  skips = [2]
  interval = 2
  subinterval = 8
  skip = 1
  array1, array2, array3, array4 = [], [], [], []
  i,j,k, z = 0,0,0, 0
  cumulative_sum = 0

# this is really ugly, but I created each array-band based on patterns for interval of increase

  while i < upper
    skips << interval += subinterval
    array1 << skip += skips[i].to_i
    i += 1
  end  
  
  while j < upper
    array2 << 2 + array1[j] + 2*j
    j += 1
  end

  while k < upper
    array3 << 4 + array1[k] + 4*k
    k += 1
  end

  while z < upper
    array4 << 6 + array1[z] + 6*z
    z += 1
  end

  # the following line would create the print-out of the numbers
  # p array1, array2, array3, array4

  combined_array = [1] + array1 + array2 + array3 + array4
  p combined_array.sort!

  combined_array.each do |el|
    cumulative_sum += el
  end

  p cumulative_sum
end

spiral(1001/2)