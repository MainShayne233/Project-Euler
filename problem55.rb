def isLychrel?(number)
	50.times do
		number += number.to_s.reverse.to_i
		return false if number.to_s == number.to_s.reverse
	end
	return true
end

def problem55()
	lychrelCount = 0
	for i in 1..10000; lychrelCount += 1 if isLychrel?(i); end
	return lychrelCount
end

puts problem55