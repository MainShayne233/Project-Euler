def factorialSum(num)
	numSplit = num.to_s.split(//)
	puts numSplit
	sum = 0
	for i in numSplit
		puts "#{sum} + #{factorial(i.to_i)} = #{sum + factorial(i.to_i)}"
		sum += factorial(i.to_i)
	end
	return sum
end

def factorial(num)
	if num == 0
		return 0
	end
	product = 1
	for i in 1..num
		product *= i
	end
	return product
end

puts factorialSum(40585)