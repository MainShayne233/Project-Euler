require 'Prime'

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

