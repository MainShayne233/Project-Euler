require 'prime'

# Version 1.0

=begin
#4179871

def divSum(num)
	sum = 1
	divlist = num.prime_division
	for i in 0..divlist.count-1
		numer = (divlist[i][0] ** (divlist[i][1] + 1) - 1)
		denom = divlist[i][0] - 1
		sum *= numer/denom
	end
	sum -= num
	return sum
end



def isAb(num)
	if (num < 945) && (num.odd?)
		return false
	elsif (num.odd?) && (num % 15 != 0)
		return false
	else
		if num >= divSum(num)
			return false
		end
	end
	return true
end


def isAbSum(num)
	for i in 1..num-12
		if isAb(i)
			if isAb(num-i)
				return true
			end
		end
	end
	return false
end

total = 0


for i in 1..28123
	total += i
end

evencounter = 48
while evencounter < 28123
	total -= evencounter
	evencounter += 2
end



for i in 1..46
	if isAbSum(i)
		total -= i
	end
end

oddcounter = 957
while oddcounter <= 28123
	if isAbSum(oddcounter)
		puts oddcounter
		total -= oddcounter
	end
	oddcounter += 2
end

puts total
=end

# Version 2.0

timer_start = Time.now

def isAbundant(n)
	return true if divisorsSum(n) > n
	return false
end

def divisorsSum(n)
	primeFactors = Prime.prime_division(n)
	finalSum = 1
	for factor in primeFactors
		tempSum = 1
		for expo in 1..factor[1]
			tempSum += factor[0]**expo
		end
		finalSum *= tempSum
	end
	return finalSum-n
end


puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
	