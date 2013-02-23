# Find the sum of all prime numbers whose value is below 2MM.

require 'prime'

# p Prime.first(148933).max # => 1999993
# p Prime.first(148934).max # => 2000003

answer = 0

Prime.first(148933).each do |variable|
  answer += variable  
end

p answer