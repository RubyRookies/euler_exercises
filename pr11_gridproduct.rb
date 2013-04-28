# def gridproduct
# end

def gridproduct

  product_row, product_column = 1, 1

  rows_array = [] # to store numerical array
  data = File.readlines("pr11_source").each do |line|
    rows_array << line.split(" ").map { |el| el.to_i }
  end
  
# rows_array.each_with_index { |row, index| row.each { |el| p el } }

  rows_array.each_with_index do |row| 
    row.each { |el| p el }
  end

end

def array_product
  product = 1
  test_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

  test_array.each_with_index do |row, column|
    p column, row
  end
end

array_product