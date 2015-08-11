#Version 1.0
=begin
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
=end

#Version 2.0
def problem2()
	fibArray = [1, 2, 3]
	until fibArray.last > 4000000; fibArray.push(fibArray.last+fibArray[fibArray.count-2]); end
	return fibArray.delete_if {|i| i%2!=0 or i > 4000000}.inject(:+)
end

puts problem2()

