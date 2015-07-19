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
puts x