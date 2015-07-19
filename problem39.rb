def pathCheck(sidesArray)
	print "#{sidesArray}\n"
	if sidesArray[0]**2 + sidesArray[1]**2 == sidesArray[2]**2
		return true
	else
		return false
	end
end

largestperm = 0
mostpossibilities = 0

def sideArrayConstructor(perm)
	triangleArray = Array.new
	for sideA in 1..(perm/3 - 2)
		for sideB in (sideA+1..((perm-sideA)/2))
			if pathCheck([sideA, sideB, (perm-sideA-sideB)])
				triangleArray.push([sideA, sideB, (perm-sideA-sideB)])
			end
		end
	end
	#print "perm: #{perm}  #{triangleArray}\n"
	return triangleArray
end

for perm in 7..1000
	#puts perm
	if sideArrayConstructor(perm).count > mostpossibilities
		mostpossibilities = sideArrayConstructor(perm).count
		largestperm = perm 
	end
end

puts largestperm