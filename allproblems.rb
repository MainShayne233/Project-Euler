def problem1
	x = 0
	i = 1
	while i < 1000
		if (i % 3 == 0) || (i % 5 == 0)
			x = x + i
		end
		i = i+1
	end
	return x
end

def problem2
	num1 = 0
	num2 = 1
	num3 = 0
	x = 0
	while num3 < 4000000
		num3 = num1 + num2
		if num3 % 2 == 0
			x = x + num3
		end
		num1 = num2
		num2 = num3
	end
	return x
end

def problem3
		orig = 600851475143
	k = 2
	largest = 0
	while k <= (orig)
	j = 2
	i = 0
		if orig % k == 0
			while j < (k)
				if k % j == 0
					i = 1
				end
				j = j+1
			end
				if i == 0
					puts k
					largest = k
				end
		end
	k = k+1
	end
	return largest
end

puts problem3