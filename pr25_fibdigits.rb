# what is the first fibonacci number to contain 1000 digits

curr = 1
succ = 2
limit = 4780 # add 2 => f_4782 is the first to contain 1000 digits
fibo_seq = [1,1] 

limit.times do |i|
  curr, succ = succ, curr + succ
  fibo_seq << curr
end

p fibo_seq.max
p fibo_seq.max.to_s.split("").size