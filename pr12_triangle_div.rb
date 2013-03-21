# generate triangle numbers (sum of natural numbers) and return first one to have 500+ divisors
# 1: 1
# 3: 1, 3
# 6: 1, 2, 3, 6
# 10 = 1 + 2 + 3 + 4 and so forth - 28 is the first to have over five divisors

triangles = [1]
factors = []
first = 2
i = 0

(1 .. 10).each do |el|
  triangles[el] = triangles[el-1] + first
  first += 1
end


print triangles