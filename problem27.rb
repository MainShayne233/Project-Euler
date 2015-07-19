require 'prime'

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
