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

def collatzSequence(n)
	i = 0
	until n == 1
		i += 1
		n = n%2 == 0 ? n/2 : 3*n+1
	end
	return i
end

def problem14()
	largestSeqeunce = 0
	largestNumber = 0
	for i in 1..1000000
		puts "#{i} : #{collatzSequence(i)}"
		if collatzSequence(i) > largestSeqeunce
			largestNumber = i
			largestSeqeunce = collatzSequence(i)
		end
	end
	return largestNumber
end

puts problem14



