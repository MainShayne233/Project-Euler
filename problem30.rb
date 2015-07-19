list = Array.new

for i in 2..999999
	splitArray = i.to_s.split(//)
	tempTotal = 0
	for j in splitArray
		tempTotal += (j.to_i)**5
	end
	if tempTotal == i
		list.push(tempTotal)
	end
end

total = 0

for num in list
	total += num
end

puts total

