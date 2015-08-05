require 'prime'

#Version 1.0

=begin

trinum = 0
x = 1
divisors = 0

while divisors < 500
	trinum += x
	#puts trinum
	check = 1
	divisors = 1
	while check <= (trinum**(0.5))
		if trinum % check == 0
			divisors += 2
		end
		if ((trinum**(0.5)).to_i * (trinum**(0.5)).to_i) == trinum
		end
		check += 1
	end
	puts "x = #{x}"
	puts "trinum = #{trinum}"
	puts "Divisors = #{divisors}"
	x += 1


end
puts trinum
puts divisors

=end

#Version 2.0

=begin
def divisors(num)
	divCount = 2
	for i in 2..(num**(0.5))
		if num%i == 0
			divCount += 2 
		end
	end
	return divCount
end

def problem12()
	triNum = 1
	for i in 1..1000000
		triNum += i
		puts triNum
		return triNum if divisors(triNum) > 500
	end
end

puts problem12
=end

# Version 2.0

def primeFactors(number)
	factorization = Hash.new
	Prime.each do |prime|
		factorization.merge!("#{prime}": 0)
		until number%prime != 0; factorization[:"#{prime}"] += 1; number /= prime; end
		return factorization if number == 1
	end
end

=begin
def divAmount(number)
	divisors = 1
	primeFactors(number).each do |key, value|
		divisors *= value+1
	end
	return divisors
end
=end

def amountOfDivisors(number)
	divisors = 1
	Prime.each do |prime|
		expo = 0
		until number%prime != 0; expo += 1; number /= prime; end
		divisors *= expo+1 if expo > 0
		return divisors if number == 1
	end
end




def problem12()
	triNum, i = 3, 2
	while amountOfDivisors(triNum) < 500; i += 1; triNum += i; end
	return triNum
end

puts problem12()









