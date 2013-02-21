# Find the greatest product of five consecutive digits in the 1000-digit number.
# source file in pr08_source

counter = 1
data = File.new("pr08_source")
old_array = []
new_array = [] # to store split text
num_array = [] # to store numerical array
res_array = [] # to store product results

# gets the text file line
while (line = data.gets)
  old_array << "#{line}".chomp
  counter += 1
end

# splits the text file
old_array.each do |el|
  new_array << el.split('')
end

new_array.flatten!

# converts into number and into array
new_array.each do |el|
  num_array << el.to_i
end

# shorter way array.flatten!.map! { |x| x.chomp }

(4 .. num_array.length).each do |el|
  res_array << num_array[el].to_i*num_array[el-1].to_i*num_array[el-2].to_i*num_array[el-3].to_i*num_array[el-4].to_i
end

p res_array.max