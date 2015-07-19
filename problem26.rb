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