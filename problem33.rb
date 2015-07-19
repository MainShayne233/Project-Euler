

def isntTrivial(num, den)
	numSplit = num.to_s.split(//)
	denSplit = den.to_s.split(//)

	if numSplit[1] == denSplit[0]
		if (numSplit[0].to_f/denSplit[1].to_f == num.to_f/den.to_f)
			if (num % numSplit[1].to_i != 0) or (den % denSplit[0].to_i != 0)
				return true
			end
		end
	end
	return false
end

def simplify(numer1, denom1)
  return Rational(numer1, denom1)
end


product = 1

for num in 10..99
	for den in 10..99
		if isntTrivial(num, den)
			product *= simplify(num, den)
		end
	end
end

puts product
