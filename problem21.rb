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