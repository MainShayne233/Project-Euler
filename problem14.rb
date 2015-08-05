# Version 1.0

=begin
start = 2
longeststart = 0
longestcount = 0

while start < 1000000
	workStart = start
	counter = 1
	until workStart == 1
		if workStart.even?
			workStart = workStart/2
			counter += 1
		elsif workStart.odd?
			workStart = 3*workStart+1
			counter +=1
		end
	end
	if counter > longestcount
		longestcount = counter
		longeststart = start
	end
	puts "start = #{start}"
	start += 1
end
puts "longeststart = #{longeststart}"
puts "longestcount = #{longestcount}"
=end

#Version 2.0

def realCollatz(num)
	count = 1
	until num == 1
		count += 1
		num = num%2==0 ? num/=2 : num*3+1
	end
	return count
end

def problem14()
	largestSequence = 0
	for i in 1..1000000
		if realCollatz(i) > largestSequence
			largestSequence = realCollatz(i)
			largestNum = i
		end
	end
	return largestNum
end

puts problem14()
 

