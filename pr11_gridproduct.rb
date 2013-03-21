data = File.new('pr11_source')
raw_array = []
sum, counter = 0, 0

while (line = data.gets) 
  # raw_array << line.split(' ')
  raw_array << "#{line}".split
end

raw_array.flatten!

while counter < raw_array.length
  raw_array[counter] = raw_array[counter].to_i
  counter += 1
end

p raw_array