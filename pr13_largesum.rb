# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

data = File.new("pr13_source")
counter = 1
sum = 0
raw_array = []

while (line = data.gets) 
  raw_array << line.split('')
  counter += 1
end

(0 ... raw_array.length).each do |i|

  sum += raw_array[i].join.to_i

end

p sum