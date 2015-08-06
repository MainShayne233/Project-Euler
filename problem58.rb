require 'prime'

primes, constants, average, square = 0, 0, 1, 1
while average > 0.1 or square < 50
	square += 2
	corner = square**2; constants += 1
	3.times do
		corner -= square-1
		corner.prime? ? primes += 1 : constants += 1
	end
	average = primes.to_f/(2*square+1)
end
puts square

