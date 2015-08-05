require 'prime'

def primeFactors(number)
	factorization = Hash.new
	Prime.each do |prime|
		factorization.merge!("#{prime}": 0)
		until number%prime != 0; factorization[:"#{prime}"] += 1; number /= prime; end
		return factorization if number == 1
	end
end

def divAmount(number)
	divisors = 1
	primeFactors(number).each do |key, value|
		divisors *= value+1
	end
	return divisors
end


puts divAmount(21)