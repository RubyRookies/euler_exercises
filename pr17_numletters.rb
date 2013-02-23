# count the cumulative count of letters in sums.  one, two, three, four, five, 
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total. 

def countletters(limit)
  dictionary = {
    1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
    6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
    11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen",
    15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen",
    19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty",
    60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety", 100 => "onehundred"
  }

  if limit > 20
    p "#{dictionary[20]}#{dictionary[limit-20]}"
  end

  lettercount = 0
  (1 .. limit).each do |el|
    # lettercount += dictionary[el].length # needs to be array of answers
  end

  p lettercount
end

countletters(25)