# Version 1.0

=begin
def findDivisorSum(num)
	sum = 1
	for i in 2..(num-1)
		if num % i == 0
			sum += i
		end
	end
	return sum 
end

amicSum = 0


for initial in 1..9999
	if (findDivisorSum(findDivisorSum(initial)) == initial) && initial != findDivisorSum(initial)
		amicSum += initial
		puts initial
	end
end

puts "\n\n #{amicSum}"
=end

# Version 2.0

class Integer
  def factors() (1..(self)/2).select { |n| (self % n).zero? and self != n } end
end

sum = 0

for i in 2..9999
	sum += i if i == (i.factors.reduce(:+)).factors.reduce(:+) and i != i.factors.reduce(:+)
end

puts sum
