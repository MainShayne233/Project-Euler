require 'prime'

# Version 1.0

=begin


def primesAmount(a, b)
	n = 0
	while true
		if (n**2 + a*n + b).prime?
			n += 1
		else
			return n
		end
	end
end

largest = 0
largestA = 0
largestB = 0

for a in -1000..1000
	for b in -1000..1000
		if primesAmount(a, b) > largest
			largest = primesAmount(a, b)
			largestA = a
			largestB = b
		end
	end
end

puts "n^2 + (#{largestA}) + (#{largestB}) produces #{largest} primes"
puts "The product of (#{largestA}) and (#{largestB}) is #{largestA*largestB}"
=end

# Version 2.0

def formula_prime_amount(a, b)
	n = 0
	while true
		return n if !(n**2 + a*n +b).prime?
		n+=1
	end
end


def problem27()
	primeArray = Prime.each(1000).to_a + Prime.each(1000).to_a.map{|i| -i}
	mostPrimes = 0
	coefs = Array.new
	(-999..999).step(2) do |a|
		for b in primeArray
			if formula_prime_amount(a, b) > mostPrimes
				mostPrimes = formula_prime_amount(a,b)
				coefs = [a,b]
			end
		end
	end
	return coefs.reduce(:*)
end

puts problem27()






