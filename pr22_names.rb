data = File.new("pr22_names.txt")

raw_array = data.gets.split(',').sort
p raw_array