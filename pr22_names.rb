# score the names - convert letters to numbers, then score = sum the letters in the name, then score * nth place of name

data = File.open("file")

namesArray, valuesArray = [], []
name_list = ""

data.each do |names|
  # some text clean up using gsub and chomp
  name_list = names.gsub("\"", "").chomp
end

# names in alphabetical order
namesArray = name_list.split(",").sort

p namesArray

namesArray.each do |name|
  val = name.ord % 32
  valuesArray << val
end

p valuesArray

hash = Hash[valuesArray.map.with_index.to_a]

p hash

#####
# the following will generate a hash with names as key value and index stored in integer
# hash = Hash[roster.map.with_index.to_a]
