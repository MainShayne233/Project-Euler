require 'prime'

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
