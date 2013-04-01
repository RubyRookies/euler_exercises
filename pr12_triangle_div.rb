# generate triangle numbers (sum of natural numbers) and return first one to have 500+ divisors
# 1: 1
# 3: 1, 3
# 6: 1, 2, 3, 6
# 10 = 1 + 2 + 3 + 4 and so forth - 28 is the first to have over five divisors


def triangle_numbers(seq)

  triangles = [1]
  factors = []
  first = 2
  i = 0

  (1 .. seq).each do |el|
    triangles[el] = triangles[el-1] + first
    first += 1
  end
  print triangles
end

def factors(number)
  factors = []
  (1 .. number).each do |el|
    factors << el if number % el == 0
  end
  p "the factors of #{number} are #{factors}"
end


# triangle_numbers(10)
factors(10)
