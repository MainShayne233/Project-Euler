require 'prime'

def concateCheck(prime1, prime2)
	return true if "#{prime1}#{prime2}".to_i.prime? and "#{prime2}#{prime1}".to_i.prime?
	return false
end

def initial_set_create()
	concateArray = Array.new
	Prime.each(10000) do |prime1|
		primeArray = Array.new
		primeArray.push(prime1)
		Prime.each(10000) do |prime2|
			if concateCheck(prime1,prime2) and prime1 != prime2
				primeArray.push(prime2)
			end
		end
		if primeArray.count > 6
			concateArray.push(primeArray)
		end
	end
	return concateArray
end

def problem60()
	primeSet = initial_set_create
	finalArray = Array.new
	for prime1 in primeSet
		tempArray = Array.new
		tempArray.push(prime1)
		for prime2 in primeSet
			if concateCheck(prime1,prime2) and prime1 != prime2
				tempArray.push(prime2)
			end
		end
		if tempArray.count > 6
			finalArray.push(tempArray)
		end
	end
	return finalArray.flatten.uniq
end

print problem60