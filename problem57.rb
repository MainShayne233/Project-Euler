require 'prime'

def nearestSquare(number)
	return number**(0.5) if number**(0.5) == (number**(0.5)+0.5).to_i
	return number**(0.5)+1
end

primes = 3.0
sideLength = 2.0
corner = 9
while primes/(sideLength*2+1) > 0.1
	sideLength += 2
	for i in 1..3; corner += sideLength; primes += 1 if corner.to_i.prime?; end
	corner += sideLength
end

puts nearestSquare(corner)