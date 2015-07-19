num1 = 1

num2 = 1

num3 = 2

counter = 3

switch = 1

while switch == 1
	if num3.to_s.length >= 1000
		puts "#{num3} and #{counter}"
		switch = 0
	end
	tempnum = num3
	num3 = num3 + num2
	num1 = num2
	num2 = tempnum
	counter += 1
end

