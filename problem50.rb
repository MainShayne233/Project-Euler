require 'prime'

primeArray = Prime.first 550

winningPrime = 2
consecutivePrime = 1;

for start in 0..primeArray.count-1
	tempSum = 0
	tempConsecs = 0
	for index in 0..primeArray.count-1-start
		tempSum += primeArray[start+index]
		if tempSum > 1000000
			break
		end
		tempConsecs += 1
		if (tempSum.prime?) and (tempSum < 1000000) and (tempConsecs > consecutivePrime)
			consecutivePrime = tempConsecs
			winningPrime = tempSum
		end
	end
end
puts "#{winningPrime} #{consecutivePrime}"