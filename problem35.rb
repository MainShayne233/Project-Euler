require 'Prime'

# Version 1.0

=begin


def rotPrime(num)
	origSplit = num.to_s.split(//)
	rotArray = rotateArray(origSplit)
	for rot in rotArray
		if !rot.join("").to_i.prime?
			return false
		end
	end
	return true
end

def rotateArray(splitNum)
	rotateList = Array.new
	rotateList.push(splitNum)
	for i in 1..splitNum.count-1
		rotateList.push(splitNum.rotate(i))
	end
	return rotateList
end

def primeLoop()
	primecounter = 0
	Prime.each(1000000) do |prime|
		if rotPrime(prime) == true
			primecounter += 1
		end
	end
	return primecounter
end

puts primeLoop()
=end

# Version 2.0 

def circular_prime?(prime)
	tempPrime = prime.to_s
	(tempPrime.length-1).times do
		tempPrime = "#{tempPrime[1..-1]}#{tempPrime[0]}"
		return false if !tempPrime.to_i.prime?
	end
	return true
end



def problem35()
	count = 0
	Prime.each(1000000) {|prime| count+= 1 if circular_prime?(prime)}
	return count
end

puts problem35
