# Version 1.0

=begin
require 'Prime'

def periodLength(num)
	n = 1
	while true
		if ((10**n)-1) % num == 0
			return n
		end
		n += 1
	end
	return n
end



def primeIter()

	longestN = 0
	winPrime = 0

	Prime.each(1000) do |prime|
		if prime != 5 and prime != 2
			if periodLength(prime) > longestN
				longestN = periodLength(prime)
				winPrime = prime
			end
		end
	end

	return winPrime

end


puts primeIter()
=end

def recurring_decimal_length(num)
	decimalArray, numerator = Array.new, 1
	while true
		remainder = numerator%num
		if decimalArray.count(remainder) == 0
			decimalArray.push(remainder)
		else
			return decimalArray.count
		end
		numerator = remainder*10
	end
end

largestR = 0
for d in 1..999
	if recurring_decimal_length(d) > largestR
		largestR, largestD = recurring_decimal_length(d), d 
	end
end
puts largestD










