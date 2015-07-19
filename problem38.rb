def isPandigital(num)
	num = num.to_s
	if (num.count "0") > 0
		return false
	end
	for digit in 1..9
		digit = digit.to_s
		if (num.count digit) != 1
			return false
		end
	end
	return true
end

def productConcate(num)
	productList = Array.new
	multiplier = 1
	while productList.join("").length < 9
		productList.push(num*multiplier)
		multiplier += 1
	end
	return productList.join("").to_i
end

largest = 0
for i in 1..10000
	if isPandigital(productConcate(i))
		if productConcate(i) > largest
			largest = productConcate(i)
		end
	end
end

puts largest