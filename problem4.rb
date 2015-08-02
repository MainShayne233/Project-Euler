# Version 1.0
=begin
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
=end

#Version 2.0
largest = 0
100.step(999,1) {|i| 100.step(999,1) {|j| largest = i*j if (i*j).to_s == (i*j).to_s.reverse and i*j > largest}}
puts largest