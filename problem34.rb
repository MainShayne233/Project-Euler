# Version 1.0

=begin
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
=end

# Version 2.0

class Integer
	def factorial
		f=1; for i in 1..self; f*= i; end; f
	end
end

def factorial_sum(num)
	num.to_s.split(//).map{|i| (i.to_i).factorial}.reduce(:+)
end

def problem34()
	sum=0; for i in 3..50000; sum+=i if i==factorial_sum(i); end; sum
end

puts problem34()