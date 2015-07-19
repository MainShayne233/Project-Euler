largest = 0
num1 = 100
while num1 < 1000
num2 = 100
	while num2 < 1000
		work = num1*num2
		if work.to_s == (work.to_s.reverse!)
			if work > largest
				largest = work
			end
		end
	num2 += 1
	end
num1 += 1
end
puts largest