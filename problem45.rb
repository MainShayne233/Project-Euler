def isTriangleNum(num)
	n = (num*2)**(0.5)
	n = n.to_i
	if (n*(n+1))/2 == num
		return true
	else
		return false
	end
end


def isPentagonalNum(num)
	inversePent = ((((24*num+1)**(0.5))+1)/6)
	if inversePent == inversePent.to_i
		return true
	end
	return false
end


def hexagonalStepper(num)
	return num*(2*num-1)
end

counter = 144

while true
	value = hexagonalStepper(counter)
	if isTriangleNum(value) and isPentagonalNum(value)
		puts value
		break
	end
	counter += 1
end